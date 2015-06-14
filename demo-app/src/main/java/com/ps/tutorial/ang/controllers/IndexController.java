package com.ps.tutorial.ang.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/") String index() {
        return "index";
    }

    @RequestMapping("/phone-list") String phoneList() {
        return "phone-list";
    }

    @RequestMapping("/phone-detail") String phoneDetail() {
        return "phone-detail";
    }

}
