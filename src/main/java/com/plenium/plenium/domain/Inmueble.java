package com.plenium.plenium.domain;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
@Table(name = "inmuebles")
public class Inmueble implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idInmueble;

    @NotEmpty
    private String denominacion;

    private Integer tipo;

    private Double precio;

    private Double superficieUtil;

    private Double superficieTotal;

    private String direccion;

    @NotEmpty
    private String poblacion;

    @NotEmpty
    private String provincia;

    @NotNull
    private Integer dormitorios;

    @NotNull
    private Integer banos;

    private Integer amueblado;

    private Integer semiAmueblado;

    private Integer noAmueblado;

    private Integer cocinaEquipada;

    private Integer aireAcondicionado;

    private Integer calefaccionCentral;

    private Integer gasNatural;

    private Integer placasSolares;

    private Integer armariosEmpotrados;

    private Integer aparcamiento;

    private Integer ascensor;

    private Integer piscina;

    private Date fechaPublicacion;

    private String propietarioNombre;

    private String propietarioApellidos;

    private String propietarioNif;

    private String propietarioTelefono;

    private String propietarioEmail;

    private Integer idUsuario;
}
