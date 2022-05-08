package com.plenium.plenium.web;

import com.plenium.plenium.domain.Cliente;
import com.plenium.plenium.domain.Usuario;
import com.plenium.plenium.servicio.ClienteService;
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
public class ClienteController {

    @Autowired
    private ClienteService clienteService;
    @Autowired
    private UsuarioService usuarioService;

    @GetMapping("/lista-clientes")
    public String listaClientes(Model model) {
        var listaClientes = clienteService.listarClientes();
        model.addAttribute("listaClientesModel", listaClientes);
        return "lista_clientes";
    }

    @GetMapping("/nuevo-cliente")
    public String agregar(Cliente cliente) {
        return "nuevo_cliente"; //modificar
    }

    @PostMapping("/guardar-cliente")
    public String guardar(@Valid Cliente cliente, Errors errores, @AuthenticationPrincipal User user) {
        if (errores.hasErrors()) {
            return "nuevo_cliente";
        }

        //Fecha actual:
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date fechaActual = new java.sql.Date(utilDate.getTime());
        cliente.setFechaAlta(fechaActual);

        //Usuario que realiza la acción:
        Usuario usuario = usuarioService.encontrarUsuarioPorUsername(user.getUsername());
        cliente.setIdUsuario(usuario.getIdUsuario());

        clienteService.guardar(cliente);
        return "redirect:/lista-clientes";
    }

    @GetMapping("/ver-cliente/{idCliente}")
    public String ver(Cliente cliente, Usuario usuario, Model model, @AuthenticationPrincipal User user) {
        cliente = clienteService.encontrarCliente(cliente);
        usuario = usuarioService.encontrarUsuarioPorUsername(user.getUsername());

        model.addAttribute("cliente", cliente);
        model.addAttribute("usuario", usuario);
        return "ver_cliente";
    }

    @GetMapping("/editar-cliente/{idCliente}")
    public String editar(Cliente cliente, Model model) {
        cliente = clienteService.encontrarCliente(cliente);
        model.addAttribute("cliente", cliente);
        return "editar_cliente";
    }

    @GetMapping("/eliminar-cliente/{idCliente}")
    public String eliminar(Cliente cliente) {
        clienteService.eliminar(cliente);
        return "redirect:/lista-clientes";
    }

}
