package com.plenium.plenium.domain;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import lombok.Data;

@Data
@Entity
@Table(name = "clientes")
public class Cliente implements Serializable {

    private static final long serialVersionUID = 1L;

    //Column(name = "id_cliente")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idCliente;

    //Column(name = "nombre")
    @NotEmpty
    private String nombre;

    //Column(name = "primer_apellido")
    @NotEmpty
    private String primerApellido;

    //Column(name = "segundo_apellido")
    private String segundoApellido;

    //Column(name = "documento_identidad")
    private String documentoIdentidad;

    //Column(name = "email")
    @NotEmpty
    @Email
    private String email;

    //Column(name = "telefono")
    @NotEmpty
    private String telefono;
    
    //Column(name = "tipo")
    private String tipo;

    //Column(name = "precio_min")
    private Integer precioMin;

    //Column(name = "precio_max")
    private Integer precioMax;

    //Column(name = "dormitorios_min")
    private Integer dormitoriosMin;

    //Column(name = "superficie_min")
    private Integer superficieMin;

    ////Column(name = "superficie_max")
    private Integer superficieMax;

    ////Column(name = "aparcamiento")
    private Integer aparcamiento;

    ////Column(name = "ascensor")
    private Integer ascensor;

    ////Column(name = "piscina")
    private Integer piscina;

    ////Column(name = "localidad")
    private String localidad;

    ////Column(name = "provincia")
    private String provincia;

    ////Column(name = "id_usuario")
    //@NotNull
    private int idUsuario;
}
