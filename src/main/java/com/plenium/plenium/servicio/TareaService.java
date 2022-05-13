package com.plenium.plenium.servicio;

import com.plenium.plenium.domain.Tarea;
import java.util.List;


public interface TareaService {

    public List<Tarea> listarTareas();

    public void guardar(Tarea tareas);

    public void eliminar(Tarea tareas);

    public Tarea encontrarTarea(Tarea tareas);
}
