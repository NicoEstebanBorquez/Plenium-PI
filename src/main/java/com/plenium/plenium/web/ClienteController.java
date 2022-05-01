package com.plenium.plenium.web;

import com.plenium.plenium.domain.Cliente;
import com.plenium.plenium.servicio.ClienteService;
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
public class ClienteController {

    @Autowired
    private ClienteService clienteService;

    @GetMapping("/lista-clientes")
    public String inicio(Model model) {
        var listaClientes = clienteService.listarClientes();
        model.addAttribute("listaClientesModel", listaClientes);
        return "lista_clientes";
    }

    @GetMapping("/nuevo-cliente")
    public String agregar(Cliente cliente) {
        return "nuevo_cliente"; //modificar
    }

    @PostMapping("/guardar-cliente")
    public String guardar(@Valid Cliente cliente, Errors errores) {
        if (errores.hasErrors()) {
            System.out.println("ClienteController - guardar() - hay errores");
            return "nuevo_cliente";
        }
        clienteService.guardar(cliente);
        return "redirect:/lista-clientes";
    }

    @GetMapping("/editar-cliente/{idCliente}")
    public String editar(Cliente cliente, Model model) {
        cliente = clienteService.encontrarCliente(cliente);
        model.addAttribute("cliente", cliente);
        return "nuevo_cliente";
    }

    @GetMapping("/eliminar-cliente/{idCliente}")
    public String eliminar(Cliente cliente) {
        clienteService.eliminar(cliente);
        return "redirect:/lista-clientes";
    }
}
