package modelo.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import modelo.entity.Nivel;
import modelo.entity.Profesor;
import modelo.service.NivelService;
import modelo.service.ProfesorService;

@Controller
public class ProfesorController {

	@Autowired
	private ProfesorService pr;
	
	@Autowired
	private NivelService nv; 
	
	@RequestMapping(path = "/CrearProfesor", method = RequestMethod.GET)
	public ModelAndView mostrarCrearProfesor( ) {
		return new ModelAndView("crearProfesor");
	}
	
	@RequestMapping(path = "/ListarProfesor", method = RequestMethod.GET)
	public ModelAndView mostrarListarNivel( ) {
		List<Profesor> profesor = pr.getProfesor();
        return new ModelAndView("listarProfesor", "profesor", profesor);
	}
	

	@RequestMapping(path = "/CrearProfesor", method = RequestMethod.POST)
	public ModelAndView crearProfesor(@RequestParam("idNivel") String idNivelString, Profesor profesor) {
	    try {
	        // Convertir el idNivel de cadena a entero
	        int idNivel = Integer.parseInt(idNivelString);

	        // Obtener el nivel por su id
	        Nivel nivel = nv.findById(idNivel);

	        // Establecer el nivel en el profesor
	        profesor.setNivel(nivel);

	        // Crear el profesor
	        pr.crearProfesor(profesor);
	      

	        // Redirigir a la página de listar profesores
	        return new ModelAndView("redirect:/ListarProfesor");
	    } catch (Exception e) {
	        e.printStackTrace();
	        // Manejar el error adecuadamente, redirigir a una página de error o mostrar un mensaje de error en la vista.
	        return new ModelAndView("error");
	    }
	}
	
	  @RequestMapping(path = "/FiltrarPorRut", method = RequestMethod.GET)
	    public ModelAndView filtrarPorRut(@RequestParam("rut") String rut) {
	        try {
	            List<Profesor> profesoresFiltrados = pr.filtrarPorRut(rut);
	            return new ModelAndView("listarProfesor", "profesor", profesoresFiltrados);
	        } catch (Exception e) {
	            e.printStackTrace();
	            // Manejar el error adecuadamente, redirigir a una página de error o mostrar un mensaje de error en la vista.
	            return new ModelAndView("error");
	        }
	    }




}
