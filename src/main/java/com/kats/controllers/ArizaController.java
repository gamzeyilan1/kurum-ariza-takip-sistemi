package com.kats.controllers;

import com.kats.dao.Ariza;
import com.kats.db.HibernateDatabaseConnection;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;


import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@Controller
public class ArizaController {
    public ArizaController() {
    }

    @RequestMapping({"/add_ariza"})
    public String getAddArizaForm() {
        return "views/ariza_add_form.jsp";
    }

    @RequestMapping(
            value = {"add_ariza_action"},
            method = {RequestMethod.POST}
    )
    public void addAriza(HttpServletResponse res, @ModelAttribute("ariza") Ariza arz) throws IOException {
        System.out.println(arz.getName());
        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();

        session.save(arz);
        t.commit();
        res.sendRedirect("dashboard");
    }

    @RequestMapping(
            value = {"edit_ariza_action"},
            method = {RequestMethod.POST}
    )
    public void editAriza(HttpServletResponse res, @ModelAttribute("ariza") Ariza arz) throws IOException {
        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();

        session.saveOrUpdate(arz);
        t.commit();
        res.sendRedirect("dashboard");
    }

    @RequestMapping({"/delete"})
    public void deleteAriza(HttpServletResponse res, @RequestParam("id") int id) throws IOException {
        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        Ariza a = new Ariza();
        a.setId(id);
        session.delete(a);
        t.commit();
        res.sendRedirect("dashboard");
    }

    @RequestMapping({"/edit"})
    public String getEditForm(HttpServletResponse res, Model m, @RequestParam("id") int id) throws IOException {
        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Query query2 = session.createQuery("FROM Ariza WHERE id = :id");
        query2.setParameter("id", id);
        Ariza a = (Ariza)query2.getSingleResult();
        m.addAttribute("ariza", a);
        return "views/ariza_edit_form.jsp";
    }
}
