package com.plenium.plenium.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import lombok.Data;

@Entity
@Data
@Table(name = "usuario")
public class Usuario implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idUsuario;

    private Date fechaAlta;

    private String username;

    private String password;

    @OneToMany
    @JoinColumn(name = "id_usuario")
    private List<Rol> roles;

    @NotEmpty
    private String nombre;

    @NotEmpty
    private String primerApellido;

    private String segundoApellido;

    @NotEmpty
    private String telefono;

    @NotEmpty
    @Email
    private String email;
}
