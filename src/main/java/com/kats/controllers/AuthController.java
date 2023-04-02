package com.kats.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@Controller
public class AuthController {

    public AuthController() {
    }

    @RequestMapping({"/login"})
    public String getLoginForm() {
        return "views/login_form.jsp";
    }

    @RequestMapping(
            value = {"/login_action"},
            method = {RequestMethod.POST}
    )
    public void checkCreds(@RequestParam("username") String unm, @RequestParam("password") String pwd, HttpServletRequest req, HttpServletResponse res) throws IOException {
        if (unm.equals("admin") && pwd.equals("admin")) {
            req.getSession().setAttribute("username", unm);
            res.sendRedirect("dashboard");
        } else {
            res.sendRedirect("login");
        }

    }

    @RequestMapping({"/logout"})
    public void logoutAdminUser(HttpServletRequest req, HttpServletResponse res) throws IOException {
        req.getSession().invalidate();
        res.sendRedirect("login");
    }
}
