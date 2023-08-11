package modelo.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndView;

import modelo.entity.Comunicados;
import modelo.entity.Profesor;
import modelo.entity.Nivel;
import modelo.service.ComunicadoService;
import modelo.service.ProfesorService;
import modelo.service.NivelService;
@Controller
public class ComunicadosController {
	@Autowired
	private ComunicadoService co;
	
	@Autowired
    private ProfesorService profesorService;
    /**
     * Maneja las solicitudes que se le hacen a la raíz del sitio
     * 
     * @return un objeto {@link ModelAndView} con la respuesta al cliente
     */

    @RequestMapping(path = "/crearComunicados", method = RequestMethod.GET)
    public ModelAndView mostrarCrearComunicado() {
     
        
    	List<Profesor> profesores = profesorService.getProfesor();
    	 ModelAndView modelAndView = new ModelAndView("crearComunicados");
         modelAndView.addObject("profesores", profesores);
    	return modelAndView;
    }
    
    @RequestMapping(path = "/ListarComunicado", method = RequestMethod.GET)
    public ModelAndView mostrarListarComunicados() {
    	List<Comunicados> comunicados = co.getComunicados();
        return new ModelAndView("listarComunicados", "comunicados", comunicados);
    }  
  

    
    @RequestMapping(path = "/crearComunicados", method = RequestMethod.POST)
    public ModelAndView crearComuninicado(
        @RequestParam("idProfesor") int idProfesor,
        Comunicados comunicado
    ) {
        try {
            // Setea el ID del profesor en el comunicado
            Profesor profesor = co. getProfesorPorId(idProfesor);
            comunicado.setProfesor(profesor);
            
            co.crearComunicados(comunicado);
            
            return new ModelAndView("redirect:/ListarComunicados");
        } catch (Exception e) {
            e.printStackTrace();
            return new ModelAndView("error");
        }
    }

}
