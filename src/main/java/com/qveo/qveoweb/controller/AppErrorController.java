package com.qveo.qveoweb.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;

@Controller
public class AppErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError(Model model, HttpServletRequest request) {

        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        Exception exception = (Exception) request.getAttribute("javax.servlet.error.exception");

        model.addAttribute("status", statusCode);
        model.addAttribute("errorMessage", (exception!=null)?exception.getMessage():null);

        return "errors/error";
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }

    }


