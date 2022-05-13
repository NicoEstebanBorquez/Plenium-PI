package com.plenium.plenium.web;

import com.plenium.plenium.domain.Tarea;
import com.plenium.plenium.domain.Usuario;
import com.plenium.plenium.servicio.TareaService;
import com.plenium.plenium.servicio.UsuarioService;
import javax.validation.Valid;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@Slf4j
public class TareaController {

    @Autowired
    private TareaService tareaService;
    @Autowired
    private UsuarioService usuarioService;

    @GetMapping("/lista-tareas")
    public String listaTareas(Model model) {
        var listaTareas = tareaService.listarTareas();
        model.addAttribute("listaTareasModel", listaTareas);
        return "lista_tareas";
    }

    @GetMapping("/nueva-tarea")
    public String agregar(Tarea tarea) {
        return "nueva_tarea"; //modificar
    }

    @PostMapping("/guardar-tarea")
    public String guardar(@Valid Tarea tarea, Errors errores, @AuthenticationPrincipal User user) {
        if (errores.hasErrors()) {
            return "nueva_tarea";
        }

        //Fecha actual:
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date fechaActual = new java.sql.Date(utilDate.getTime());
        tarea.setFechaPublicacion(fechaActual);

        //Usuario que realiza la acción:
        Usuario usuario = usuarioService.encontrarUsuarioPorUsername(user.getUsername());
        tarea.setIdUsuario(usuario.getIdUsuario());

        tareaService.guardar(tarea);
        return "redirect:/lista-tareas";
    }

    @GetMapping("/ver-tarea/{idTarea}")
    public String ver(Tarea tarea, Usuario usuario, Model model, @AuthenticationPrincipal User user) {
        tarea = tareaService.encontrarTarea(tarea);
        usuario = usuarioService.encontrarUsuarioPorUsername(user.getUsername());

        model.addAttribute("tarea", tarea);
        model.addAttribute("usuario", usuario);
        return "ver_tarea";
    }

    @GetMapping("/editar-tarea/{idTarea}")
    public String editar(Tarea tarea, Model model) {
        tarea = tareaService.encontrarTarea(tarea);
        model.addAttribute("tarea", tarea);
        return "editar_tarea";
    }

    @GetMapping("/eliminar-tarea/{idTarea}")
    public String eliminar(Tarea tarea) {
        tareaService.eliminar(tarea);
        return "redirect:/lista-tareas";
    }

}
