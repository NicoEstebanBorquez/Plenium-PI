package com.plenium.plenium.web;


import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Encriptador {
    
    public static String encriptarPassword(String password){
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder.encode(password);
    }
    
    
    public static int sumarn(int a, int b)  {
        return a+b;
    }
}
