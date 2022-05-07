package com.plenium.plenium.domain;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

@Data
@Entity
@Table(name = "inmuebles")
public class Inmueble implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idInmueble;

    private Date fechaPublicacion;

    @NotEmpty
    private String denominacion;

    @NotEmpty
    private String tipo;

    //@NotNull
    private Double precio;

    private Double superficieUtil;

    private Double superficieTotal;

    @NotEmpty
    private String direccion;

    @NotEmpty
    private String poblacion;

    @NotEmpty
    private String provincia;

    //@NotNull
    private Integer dormitorios;

    //@NotNull
    private Integer banos;

    private String amueblado;

    private String cocinaEquipada;

    private String aireAcondicionado;

    private String calefaccionCentral;

    private String gasNatural;

    private String placasSolares;

    private String armariosEmpotrados;

    private String terraza;

    private String jardin;

    private String aparcamiento;

    private String ascensor;

    private String piscina;

    @NotEmpty
    private String propietarioNombre;

    @NotEmpty
    private String propietarioApellidos;

    private String propietarioNif;

    @NotEmpty
    private String propietarioTelefono;

    @NotEmpty
    @Email
    private String propietarioEmail;

    private String imagen;

    private Long idUsuario;
}
