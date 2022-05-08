package com.plenium.plenium.servicio;

import com.plenium.plenium.domain.Inmueble;
import java.util.List;

public interface InmuebleService {

    public List<Inmueble> listarInmuebles();

    public void guardar(Inmueble inmueble);

    public void eliminar(Inmueble inmueble);

    public Inmueble encontrarInmueble(Inmueble inmueble);

    public List<Inmueble> buscarInmuebles(
            Integer precioMin,
            Integer precioMax,
            Integer dormitoriosMin,
            Integer dormitoriosMax,
            Integer superficieMin,
            Integer superficieMax,
            String tipo,
            String poblacion,
            String provincia);

}
