package modelo.controladores;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InicioControlador {
	   
	@GetMapping("/")
	public String mostrarPaginaInicio() {
	return "inicio"; // Nombre de la vista JSP (o Thymeleaf) asociada al caso de uso "Inicio"
	}
		
	 @RequestMapping(path = "/pintemos", method = RequestMethod.GET)
	    public  ModelAndView  mostrarPaginaPintemos() {
		  return new ModelAndView("pintemos");// El nombre del JSP que deseas mostrar (sin la extensión .jsp)
	 }
		
	 
}


