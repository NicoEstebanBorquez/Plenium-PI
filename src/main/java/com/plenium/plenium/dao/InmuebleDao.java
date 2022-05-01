package com.plenium.plenium.dao;

import com.plenium.plenium.domain.Inmueble;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InmuebleDao extends JpaRepository<Inmueble, Long>{
    
}
