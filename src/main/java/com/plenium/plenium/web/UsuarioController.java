package com.plenium.plenium.web;

import com.plenium.plenium.domain.Rol;
import com.plenium.plenium.domain.Usuario;
import com.plenium.plenium.servicio.UsuarioService;
import com.plenium.plenium.util.EncriptarPassword;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @GetMapping("/lista-usuarios")
    public String inicio(Model model) {
        var listaUsuarios = usuarioService.listarUsuarios();
        model.addAttribute("listaUsuariosModel", listaUsuarios);
        return "lista_usuarios";
    }

    @GetMapping("/nuevo-usuario")
    public String agregar(Usuario usuario) {
        return "nuevo_usuario";
    }

    @PostMapping("/guardar-usuario")
    public String guardar(@Valid Usuario usuario, Errors errores, @RequestParam("password") String password) {
        if (errores.hasErrors()) {
            return "nuevo_usuario";
        }

        //Fecha actual:
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date fechaActual = new java.sql.Date(utilDate.getTime());
        usuario.setFechaAlta(fechaActual);

        //Encriptacion de la contraseña
        String passwordEncriptada = EncriptarPassword.encriptarPassword(password);
        usuario.setPassword(passwordEncriptada);
        usuarioService.guardar(usuario);
        return "redirect:/lista-usuarios";
    }

    @PostMapping("/guardar-usuario-editado")
    public String guardarEditado(Usuario usuario, @RequestParam("password") String password) {
        
        //Roles del usuario
        Long idRol = usuario.getIdUsuario() + 1;
        Rol rolUser = new Rol(idRol, "ROLE_USER");
        List<Rol> listaRoles = new ArrayList<Rol>();
        listaRoles.add(rolUser);
        usuario.setRoles(listaRoles);
        
         //Encriptacion de la nueva contraseña
        String passwordEncriptada = EncriptarPassword.encriptarPassword(password);
        usuario.setPassword(passwordEncriptada);
        
        usuarioService.guardar(usuario);
        return "redirect:/lista-usuarios";
    }

    @GetMapping("/ver-usuario/{idUsuario}")
    public String ver(Usuario usuario, Model model) {
        usuario = usuarioService.encontrarUsuario(usuario);
        model.addAttribute("usuario", usuario);
        return "ver_usuario";
    }

    @GetMapping("/editar-usuario/{idUsuario}")
    public String editar(Usuario usuario, Model model) { 
        usuario = usuarioService.encontrarUsuario(usuario);
        model.addAttribute("usuario", usuario);
        return "editar_usuario";
    }
    
    @GetMapping("/editar-perfil/{idUsuario}")
    public String editarPerfil(Usuario usuario, Model model) { 
        usuario = usuarioService.encontrarUsuario(usuario);
        model.addAttribute("usuario", usuario);
        return "editar_perfil";
    }

    @GetMapping("/eliminar-usuario/{idUsuario}")
    public String eliminar(Usuario usuario) {
        usuarioService.eliminar(usuario);
        return "redirect:/lista-usuarios";
    }

}
