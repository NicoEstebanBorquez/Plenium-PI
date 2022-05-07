package com.plenium.plenium.domain;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import lombok.Data;

@Data
@Entity
@Table(name = "clientes")
public class Cliente implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idCliente;

    private String estado;

    private Date fechaAlta;

    @NotEmpty
    private String nombre;

    @NotEmpty
    private String primerApellido;

    private String segundoApellido;

    private String documentoIdentidad;

    @NotEmpty
    @Email
    private String email;

    @NotEmpty
    private String telefono;

    private String tipo;

    private Integer precioMin;

    private Integer precioMax;

    private Integer dormitoriosMin;

    private Integer dormitoriosMax;

    private Integer superficieMin;

    private Integer superficieMax;

    private String localidad;

    private String provincia;

    private Long idUsuario;
}
