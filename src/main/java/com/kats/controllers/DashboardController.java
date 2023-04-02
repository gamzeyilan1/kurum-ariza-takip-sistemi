package com.kats.controllers;

import com.kats.dao.Ariza;
import com.kats.db.HibernateDatabaseConnection;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DashboardController {
    public DashboardController() {
    }

    @RequestMapping({"/dashboard"})
    public String loadDashboard(Model m, HttpServletRequest req, HttpServletResponse res) throws IOException {
        String username = (String)req.getSession().getAttribute("username");
        if (username == null) {
            res.sendRedirect("login");
        }

        Session session = null;
        session = HibernateDatabaseConnection.getSessionFactory().openSession();
        Query query2 = session.createQuery("FROM Ariza");
        List arizalar = query2.list();
        m.addAttribute("ariza_list", arizalar);
        return "views/dashboard.jsp";
    }

}
