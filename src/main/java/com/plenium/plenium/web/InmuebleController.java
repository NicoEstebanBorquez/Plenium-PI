package com.plenium.plenium.web;

import com.plenium.plenium.domain.Inmueble;
import com.plenium.plenium.servicio.InmuebleService;
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
public class InmuebleController {

    @Autowired
    private InmuebleService inmuebleService;

    @GetMapping("/cartera-inmuebles")
    public String inicio(Model model) {
        var listaInmuebles = inmuebleService.listarInmuebles();
        model.addAttribute("listaInmueblesModel", listaInmuebles);
        return "cartera_inmuebles";
    }

    @GetMapping("/nuevo-inmueble")
    public String agregar(Inmueble inmueble) {
        return "nuevo_inmueble"; //modificar
    }

    @PostMapping("/guardar-inmueble")
    public String guardar(@Valid Inmueble inmueble, Errors errores) {
        if (errores.hasErrors()) {
            return "nuevo_inmueble";
        }
        inmuebleService.guardar(inmueble);
        return "redirect:/cartera-inmuebles";
    }

    @GetMapping("/editar-inmueble/{idInmueble}")
    public String editar(Inmueble inmueble, Model model) {
        inmueble = inmuebleService.encontrarInmueble(inmueble);
        model.addAttribute("inmueble", inmueble);
        return "nuevo_inmueble";
    }

    @GetMapping("/eliminar-inmueble/{idInmueble}")
    public String eliminar(Inmueble inmueble) {
        inmuebleService.eliminar(inmueble);
        return "redirect:/cartera-inmuebles";
    }
}
