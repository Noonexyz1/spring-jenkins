package com.prueba;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/saludo")
    public String saludo() {
        return "Hello Polled Builds, test 8";
    }
}


