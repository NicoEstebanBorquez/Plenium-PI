package com.plenium.plenium.web;

import com.plenium.plenium.domain.Inmueble;
import com.plenium.plenium.domain.Usuario;
import com.plenium.plenium.servicio.InmuebleService;
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
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Slf4j
public class InmuebleController {

    @Autowired
    private InmuebleService inmuebleService;
    @Autowired
    private UsuarioService usuarioService;

    @GetMapping("/cartera-inmuebles")
    public String listaInmuebles(Model model) {
        var listaInmuebles = inmuebleService.listarInmuebles();
        model.addAttribute("listaInmueblesModel", listaInmuebles);
        return "lista_inmuebles";
    }

    @GetMapping("/nuevo-inmueble")
    public String agregar(Inmueble inmueble) {
        return "nuevo_inmueble"; //modificar
    }

    @PostMapping("/guardar-inmueble")
    public String guardar(@Valid Inmueble inmueble, Errors errores, @AuthenticationPrincipal User user) {
        if (errores.hasErrors()) {
            return "nuevo_inmueble";
        }

        //Fecha actual:
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date fechaActual = new java.sql.Date(utilDate.getTime());
        inmueble.setFechaPublicacion(fechaActual);

        //Usuario que realiza la acción:
        Usuario usuario = usuarioService.encontrarUsuarioPorUsername(user.getUsername());
        inmueble.setIdUsuario(usuario.getIdUsuario());

        inmuebleService.guardar(inmueble);
        return "redirect:/cartera-inmuebles";
    }

    @GetMapping("/ver-inmueble/{idInmueble}")
    public String ver(Inmueble inmueble, Usuario usuario, Model model, @AuthenticationPrincipal User user) {
        inmueble = inmuebleService.encontrarInmueble(inmueble);
        usuario = usuarioService.encontrarUsuarioPorUsername(user.getUsername());

        model.addAttribute("inmueble", inmueble);
        model.addAttribute("usuario", usuario);
        return "ver_inmueble";
    }

    @GetMapping("/editar-inmueble/{idInmueble}")
    public String editar(Inmueble inmueble, Model model) {
        inmueble = inmuebleService.encontrarInmueble(inmueble);
        model.addAttribute("inmueble", inmueble);
        return "editar_inmueble";
    }

    @GetMapping("/eliminar-inmueble/{idInmueble}")
    public String eliminar(Inmueble inmueble) {
        inmuebleService.eliminar(inmueble);
        return "redirect:/cartera-inmuebles";
    }

    @GetMapping("/buscador")
    public String buscador(Model model) {
        var listaInmuebles = inmuebleService.listarInmuebles();
        model.addAttribute("listaInmueblesModel", listaInmuebles);
        return "buscador";
    }

    @PostMapping("/buscar-inmuebles")
    public String buscar(Model model,
            @RequestParam("precioMin") Integer precioMin,
            @RequestParam("precioMax") Integer precioMax,
            @RequestParam("dormitoriosMin") Integer dormitoriosMin,
            @RequestParam("dormitoriosMax") Integer dormitoriosMax,
            @RequestParam("superficieMin") Integer superficieMin,
            @RequestParam("superficieMax") Integer superficieMax,
            @RequestParam("tipo") String tipo,
            @RequestParam("poblacion") String poblacion,
            @RequestParam("provincia") String provincia) {

        var listaInmuebles = inmuebleService.buscarInmuebles(
                precioMin,
                precioMax,
                dormitoriosMin,
                dormitoriosMax,
                superficieMin,
                superficieMax,
                tipo,
                poblacion,
                provincia
        );
        model.addAttribute("listaInmueblesModel", listaInmuebles);
        return "lista_inmuebles";
    }

}
