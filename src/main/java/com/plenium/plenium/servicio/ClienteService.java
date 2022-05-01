package com.plenium.plenium.servicio;

import com.plenium.plenium.domain.Cliente;
import java.util.List;


public interface ClienteService {

    public List<Cliente> listarClientes();

    public void guardar(Cliente cliente);

    public void eliminar(Cliente cliente);

    public Cliente encontrarCliente(Cliente cliente);
}
