package com.plenium.plenium.servicio;

import com.plenium.plenium.domain.Tarea;
import java.util.List;

public interface TareaService {

    public List<Tarea> listarTareas();

    public List<Tarea> listarTareasHoy();

    public List<Tarea> listarTareasSemana();

    public void guardar(Tarea tareas);

    public void eliminar(Tarea tareas);

    public Tarea encontrarTarea(Tarea tareas);

}
