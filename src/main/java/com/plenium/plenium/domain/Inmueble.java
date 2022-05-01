package com.plenium.plenium.domain;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import lombok.Data;

@Data
@Entity
@Table(name = "inmuebles")
public class Inmueble implements Serializable {

    private static final long serialVersionUID = 1L;

    //@Column(name = "id_inmueble")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idInmueble;

    //@Column(name = "denominacion")
    @NotEmpty
    private String denominacion;

    //@Column(name = "poblacion")
    @NotEmpty
    private String poblacion;

    //@Column(name = "provincia")
    @NotEmpty
    private String provincia;

}
