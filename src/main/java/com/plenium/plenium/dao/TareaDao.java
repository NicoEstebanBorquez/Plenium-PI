package com.plenium.plenium.dao;

import com.plenium.plenium.domain.Tarea;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TareaDao extends JpaRepository<Tarea, Long>{
    
}
