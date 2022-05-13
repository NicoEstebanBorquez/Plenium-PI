package com.plenium.plenium.web;

import com.plenium.plenium.servicio.ClienteService;
import com.plenium.plenium.servicio.InmuebleService;
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
public class ControladorInicio {

    @Autowired
    private InmuebleService inmuebleService;
    @Autowired
    private UsuarioService usuarioService;
    @Autowired
    private ClienteService clienteService;
    @Autowired
    private TareaService tareaService;

    @GetMapping("/panel-control")
    public String irPanelControl() {
        return "panel_control";
    }

    @GetMapping("/")
    public String inicio(Model model, @AuthenticationPrincipal User user) {
        
        //Nº total de inmuebles
        int totalInmuebles = inmuebleService.totalInmuebles();
        model.addAttribute("totalInmuebles", totalInmuebles);
        
        //Nº total de clientes
        int totalClientes = clienteService.totalClientes();
        model.addAttribute("totalClientes", totalClientes);

        //Agenda de hoy
        var listaTareasHoy = tareaService.listarTareas();
        model.addAttribute("listaTareasHoy", listaTareasHoy);

        log.info("Usuario que hizo login: " + user.getUsername());
        return "panel_control";
    }

}
