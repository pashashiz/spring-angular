package com.ps.tutorial.ang.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.nio.file.Files;

@RestController
public class PhoneController {

    @Autowired
    ApplicationContext context;

    @RequestMapping("/phones") String getPhones() throws IOException {
        Resource resource = context.getResource("classpath:phones/phones.json");
        return new String(Files.readAllBytes(resource.getFile().toPath()));
    }

    @RequestMapping("/phone/{id}") String getPhone(@PathVariable String id) throws IOException {
        Resource resource = context.getResource("classpath:phones/" + id + ".json");
        return new String(Files.readAllBytes(resource.getFile().toPath()));
    }

}
