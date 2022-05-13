package com.plenium.plenium.web;

import javax.validation.Valid;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@Slf4j
public class ControladorInicio {
        
    @GetMapping("/panel-control")
    public String irPanelControl(){
        return "panel_control";
    }
    
    @GetMapping("/")
    public String inicio(Model model, @AuthenticationPrincipal User user){

        log.info("usuario que hizo login:" + user.getUsername());
        return "panel_control";
    }
   
    

}




