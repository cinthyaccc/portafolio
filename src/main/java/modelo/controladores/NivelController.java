package modelo.controladores;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import modelo.entity.Nivel;
import modelo.service.NivelService;

@Controller
public class NivelController {
	@Autowired
	private NivelService ni;
	
	
	
	@RequestMapping(path = "/CrearNivel", method = RequestMethod.GET)
	public ModelAndView mostrarCrearNivel( ) {
		return new ModelAndView("crearNivel");
	}
	
	  @GetMapping("/ListarNivel")
      public String obtenerNivelesConProfesores(Model model) {
          List<Nivel> niveles = ni.obtenerNivelesConProfesores();
          model.addAttribute("niveles", niveles);
          return "listarNivel"; // Nombre de la vista
      }
      
	

	@RequestMapping(path = "/CrearNivel", method = RequestMethod.POST)
    public ModelAndView crearNivel(Nivel nivel) {
        try {
            
            ni.crearNivel(nivel); // Guardamos la capacitación en la base de datos (asegúrate de que el método crearCapacitaciones solo reciba la instancia de Capacitacion)
            // Redirigir a la página de listar capacitaciones
            return new ModelAndView("redirect:/ListarNivel");
        } catch (Exception e) {
            e.printStackTrace();
            // Manejar el error adecuadamente, redirigir a una página de error o mostrar un mensaje de error en la vista.
            return new ModelAndView("error");
        }
    }
}
