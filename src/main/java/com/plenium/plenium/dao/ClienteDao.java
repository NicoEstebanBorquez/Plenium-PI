package com.plenium.plenium.dao;

import com.plenium.plenium.domain.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClienteDao extends JpaRepository<Cliente, Long>{
    
}
