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

    private Integer precio;

    private Integer superficieUtil;

    private Integer superficieTotal;

    @NotEmpty
    private String direccion;

    @NotEmpty
    private String poblacion;

    @NotEmpty
    private String provincia;

    private Integer dormitorios;

    private Integer banos;

    private String amueblado;

    private String cocinaEquipada;

    private String aireAcondicionado;

    private String calefaccionCentral;

    private String gasNatural;

    private String placasSolares;

    private String armariosEmpotrados;

    private String terraza;

    private String aparcamiento;

    private String ascensor;

    private String piscina;

    private String jardin;

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

    private Long idUsuario;

    public Inmueble() {
    }

    public Inmueble(Long idInmueble, Date fechaPublicacion, String denominacion, String tipo, Integer precio, Integer superficieUtil, Integer superficieTotal, String direccion, String poblacion, String provincia, Integer dormitorios, Integer banos, String amueblado, String cocinaEquipada, String aireAcondicionado, String calefaccionCentral, String gasNatural, String placasSolares, String armariosEmpotrados, String terraza, String aparcamiento, String ascensor, String piscina, String jardin, String propietarioNombre, String propietarioApellidos, String propietarioNif, String propietarioTelefono, String propietarioEmail, Long idUsuario) {
        this.idInmueble = idInmueble;
        this.fechaPublicacion = fechaPublicacion;
        this.denominacion = denominacion;
        this.tipo = tipo;
        this.precio = precio;
        this.superficieUtil = superficieUtil;
        this.superficieTotal = superficieTotal;
        this.direccion = direccion;
        this.poblacion = poblacion;
        this.provincia = provincia;
        this.dormitorios = dormitorios;
        this.banos = banos;
        this.amueblado = amueblado;
        this.cocinaEquipada = cocinaEquipada;
        this.aireAcondicionado = aireAcondicionado;
        this.calefaccionCentral = calefaccionCentral;
        this.gasNatural = gasNatural;
        this.placasSolares = placasSolares;
        this.armariosEmpotrados = armariosEmpotrados;
        this.terraza = terraza;
        this.aparcamiento = aparcamiento;
        this.ascensor = ascensor;
        this.piscina = piscina;
        this.jardin = jardin;
        this.propietarioNombre = propietarioNombre;
        this.propietarioApellidos = propietarioApellidos;
        this.propietarioNif = propietarioNif;
        this.propietarioTelefono = propietarioTelefono;
        this.propietarioEmail = propietarioEmail;
        this.idUsuario = idUsuario;
    }

}
