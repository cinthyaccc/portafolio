package modelo.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import modelo.entity.Usuarios;
import modelo.repository.IRegistroUsuarioRepository;

@Controller
public class LoginController {
@Autowired
private IRegistroUsuarioRepository ruRepository;

@Autowired
private BCryptPasswordEncoder passwordEncoder;
 

    @RequestMapping(value = "/login")
    public ModelAndView login() {
        return new ModelAndView("login");
    }
    
    @RequestMapping(value = "/registrarse")
    public ModelAndView registrarse() {
        return new ModelAndView("registrarse");
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


    @PostMapping("/registro")
    public ModelAndView registrarUsuario(@RequestParam String usuario,
                                   @RequestParam String password,
                                   @RequestParam String email)
                                    {

        // Encriptar la contraseña antes de guardarla
        String contraseñaEncriptada = passwordEncoder.encode(password);
        
     // Establecer el rol fijo
        String rol = "ROLE_apoderado";

        // Crear y guardar el usuario en la base de datos
        Usuarios usuarios = new Usuarios(usuario, contraseñaEncriptada, email, rol);
        ruRepository.save(usuarios);

        // Crear un ModelAndView y agregar el mensaje al modelo
        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject("mensaje", "Registro Exitoso");

        // Redirigir a la página de inicio de sesión con el mensaje
        return modelAndView;
    }

    
}
