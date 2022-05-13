package com.plenium.plenium.servicio;

import com.plenium.plenium.dao.TareaDao;
import com.plenium.plenium.domain.Tarea;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TareaServiceImpl implements TareaService {

    @Autowired
    private TareaDao tareaDao;

    @Override
    @Transactional(readOnly = true)
    public List<Tarea> listarTareas() {
        return (List<Tarea>) tareaDao.findAll();
    }

    @Override
    @Transactional
    public void guardar(Tarea tarea) {
        tareaDao.save(tarea);
    }

    @Override
    @Transactional
    public void eliminar(Tarea tarea) {
        tareaDao.delete(tarea);
    }

    @Override
    @Transactional(readOnly = true)
    public Tarea encontrarTarea(Tarea tarea) {
        return tareaDao.findById(tarea.getIdTarea()).orElse(null);
    }
}
