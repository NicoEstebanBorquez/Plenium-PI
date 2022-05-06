package com.plenium.plenium.web;

import com.plenium.plenium.domain.Usuario;
import com.plenium.plenium.servicio.UsuarioService;
import javax.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
    public String guardar(@Valid Usuario usuario, Errors errores) {
        if (errores.hasErrors()) {
            return "nuevo_usuario";
        }
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

    @GetMapping("/eliminar-usuario/{idUsuario}")
    public String eliminar(Usuario usuario) {
        usuarioService.eliminar(usuario);
        return "redirect:/lista-usuarios";
    }

}
