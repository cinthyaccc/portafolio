package modelo.controladores;

import java.util.ArrayList;

import java.util.List;
import org.springframework.ui.Model;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import modelo.entity.Alumno;
import modelo.entity.Comunicados;
import modelo.entity.Profesor;
import modelo.service.AlumnoComunicadoService;
import modelo.service.AlumnoService;
import modelo.service.ComunicadoService;
import modelo.service.ProfesorService;

@Controller
public class ComunicadosController {
	@Autowired
	private ComunicadoService co;
	
	@Autowired
    private ProfesorService profesorService;
	 @Autowired
	    private AlumnoService alumnoService;
	 @Autowired
	 	private AlumnoComunicadoService acs;

    /**
     * Maneja las solicitudes que se le hacen a la raíz del sitio
     * 
     * @return un objeto {@link ModelAndView} con la respuesta al cliente
     */
	 @GetMapping("/comunicados")
	 public ModelAndView mostrarComunicados() {
	     List<Comunicados> comunicados = co.getComunicados();
	     return new ModelAndView("comunicados", "comunicados", comunicados);
	 }
	
    @RequestMapping(path = "/crearComunicados", method = RequestMethod.GET)
    public ModelAndView mostrarCrearComunicado() {
     
        
    	List<Profesor> profesores = profesorService.getProfesor();
    	 ModelAndView modelAndView = new ModelAndView("crearComunicados");
         modelAndView.addObject("profesores", profesores);
    	return modelAndView;
    }
    
    @RequestMapping(path = "/ListarComunicados", method = RequestMethod.GET)
    public ModelAndView mostrarListarComunicados() {
    	List<Comunicados> comunicados = co.getComunicados();
        return new ModelAndView("listarComunicados", "comunicados", comunicados);
    }  
  

   
    @GetMapping("/obtenerAlumnosPorProfesor")
    @ResponseBody
    public List<Alumno> obtenerAlumnosPorProfesor(@RequestParam("idProfesor") int idProfesor) {
        List<Alumno> alumnos = alumnoService.obtenerAlumnosPorProfesor(idProfesor);
        
        // Inicializar las colecciones antes de devolver la lista
        alumnos.forEach(alumno -> {
            alumno.getIdNivel().getProfesores().size();
        });

        return alumnos;
    }
    
    
       
    @RequestMapping(path = "/crearComunicados", method = RequestMethod.POST)
    public ModelAndView crearComuninicado(
        @RequestParam("idProfesor") int idProfesor,
        @RequestParam("alumnosSeleccionados") String alumnosSeleccionados,
        Comunicados comunicado,
        Model model
    ) {
        try {
            // Setea el ID del profesor en el comunicado
            Profesor profesor = co.getProfesorPorId(idProfesor);
            comunicado.setProfesor(profesor);
            
            co.crearComunicados(comunicado);
            
            // Divide la lista de IDs de alumnos seleccionados
            String[] idsAlumnosStr = alumnosSeleccionados.split(",");
            List<Alumno> alumnosSeleccionadosList = new ArrayList<>();

            for (String idAlumnoStr : idsAlumnosStr) {
            	 int idAlumno = Integer.parseInt(idAlumnoStr);
                Alumno alumno = alumnoService.obtenerAlumnoPorId(idAlumno);
                alumnosSeleccionadosList.add(alumno);
           
            }
                
            comunicado.setAlumnos(alumnosSeleccionadosList);

            // Guarda el comunicado con los alumnos asociados
            co.guardarComunicado(comunicado);
            model.addAttribute("comunicadoCreado", true);
            return new ModelAndView("redirect:/ListarComunicados");
        } catch (Exception e) {
            e.printStackTrace();
            return new ModelAndView("error");
        }
   
        
        
        
    }
    
 

    @RequestMapping(path = "/FiltrarPorRutProfesor", method = RequestMethod.GET)
    public ModelAndView filtrarPorRutProfesor(@RequestParam("rut") String rut) {
        try {
            List<Profesor> profesores = profesorService.filtrarPorRutProfesor(rut);
            
            if (!profesores.isEmpty()) {
                Profesor profesor = profesores.get(0); // Obtén el primer profesor de la lista
                int idProfesor = profesor.getIdProfesor(); // Asegúrate de que la entidad Profesor tenga un método getId()
                
                List<Comunicados> comunicadosFiltrados = co.getComunicadosPorIdProfesor(idProfesor);

                return new ModelAndView("listarComunicados", "comunicados", comunicadosFiltrados);
            } else {
                // Manejar el caso cuando no se encuentra el profesor
                return new ModelAndView("error");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ModelAndView("error");
        }
    }


    
    
}