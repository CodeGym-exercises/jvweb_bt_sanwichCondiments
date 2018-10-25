package com.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class SandwichCondimentsController {
    @GetMapping()
    public String showHomePage(){
        return "index";
    }

    @PostMapping
    public String getCondiments(@RequestParam("condiment") String[] condiments, Model model){
        model.addAttribute("condiments",condiments);
        return "index";
    }
}
