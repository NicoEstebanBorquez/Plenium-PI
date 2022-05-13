package com.plenium.plenium.domain;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import lombok.Data;

@Data
@Entity
@Table(name = "tareas")
public class Tarea implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idTarea;

    private String tipo;

    private Date fechaPublicacion;

    private Date fechaVencimiento;

    @NotEmpty
    private String titulo;
    
    @NotEmpty
    private String descripcion;

    private Long idUsuario;

}
