package com.ps.tutorial.rest.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/")
    public String index() {
        return "hello";
    }

    @RequestMapping("/todo")
    public String todo() {
        return "todo";
    }

}
