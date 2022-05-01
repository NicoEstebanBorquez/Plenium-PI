package com.plenium.plenium.servicio;

import com.plenium.plenium.dao.InmuebleDao;
import com.plenium.plenium.domain.Inmueble;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class InmuebleServiceImpl implements InmuebleService {

    @Autowired
    private InmuebleDao inmuebleDao;

    @Override
    @Transactional(readOnly = true)
    public List<Inmueble> listarInmuebles() {
        return (List<Inmueble>) inmuebleDao.findAll();
    }

    @Override
    @Transactional
    public void guardar(Inmueble inmueble) {
        inmuebleDao.save(inmueble); 
    }

    @Override
    @Transactional
    public void eliminar(Inmueble inmueble) {
        inmuebleDao.delete(inmueble);
    }

    @Override
    @Transactional(readOnly = true)
    public Inmueble encontrarInmueble(Inmueble inmueble) {
        return inmuebleDao.findById(inmueble.getIdInmueble()).orElse(null);
    }
}
