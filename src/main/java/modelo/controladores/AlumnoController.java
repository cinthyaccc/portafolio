package modelo.controladores;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import modelo.entity.Alumno;
import modelo.entity.Nivel;
import modelo.service.AlumnoService;


@Controller
public class AlumnoController {
	
	private static final Logger logger = LoggerFactory.getLogger(AlumnoController.class);
	@Autowired
	private AlumnoService al;
    /**
     * Maneja las solicitudes que se le hacen a la raíz del sitio
     * 
     * @return un objeto {@link ModelAndView} con la respuesta al cliente
     */
    @RequestMapping(path = "/CrearAlumno", method = RequestMethod.GET)
    public ModelAndView mostrarCrearAlumno() {
        return new ModelAndView("crearAlumno");
    }
    
    @RequestMapping(path = "/listarAlumnos", method = RequestMethod.GET)
    public ModelAndView mostrarListarAlumnos() {
    	List<Alumno> alumnos = al.getAlumnos();
        return new ModelAndView("listarAlumnos", "alumnos", alumnos);
    }  
  

    @RequestMapping(path = "/CrearAlumno", method = RequestMethod.POST)
    public ModelAndView crearAlumno(@RequestParam("idNivelString") String idNivelString, Alumno alumno) {
       
        try {
            int idNivel = Integer.parseInt(idNivelString);

            // Crear un objeto Nivel con el idNivel
            Nivel nivel = new Nivel();
            nivel.setIdNivel(idNivel);

            // Asignar el objeto Nivel al objeto Alumno
            alumno.setIdNivel(nivel);

            al.crearAlumnos(alumno); // Guardamos el alumno en la base de datos (asegúrate de que el método crearAlumnos solo reciba la instancia de Alumno)
            // Redirigir a la página de listar alumnos
            return new ModelAndView("redirect:/ListarAlumnos");
        } catch (NumberFormatException e) {
            // Manejar el caso en que 'idNivelString' no sea un número válido
            // Por ejemplo, mostrar un mensaje de error al usuario o realizar alguna acción apropiada
            e.printStackTrace();
            return new ModelAndView("error");
        } catch (Exception e) {
            e.printStackTrace();
            // Manejar el error adecuadamente, redirigir a una página de error o mostrar un mensaje de error en la vista.
            return new ModelAndView("error");
        }
    }
}