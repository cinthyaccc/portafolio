package modelo.controladores;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

 

    @RequestMapping(value = "/login")
    public ModelAndView login() {
        return new ModelAndView("login");
    }

    @RequestMapping(value = "/error")
    public ModelAndView errorLogin() {
        return new ModelAndView("login", "error", "true");
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public ModelAndView logout() {
        // Realiza el proceso de cierre de sesión si es necesario, por ejemplo, eliminar la autenticación actual
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            SecurityContextHolder.clearContext(); // Esto limpiará la autenticación actual
        }

     
       return new ModelAndView("redirect:/");
    }

   

    
}
