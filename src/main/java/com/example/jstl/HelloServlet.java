package com.example.jstl;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

//@WebServlet(name = "helloServlet", value = "/hello-servlet")
@WebServlet(value = {"/hello-servlet", "/hello-servlet1", "*.com"})
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<String> fruits = new ArrayList<>();
        fruits.add("Pomme");
        fruits.add("Banane");
        fruits.add("Orange");
        fruits.add("Fraise");
        fruits.add("Cerise");

        request.setAttribute("fruits", fruits);

        getServletContext().getRequestDispatcher("/WEB-INF/myJstl.jsp").forward(request, response);
    }

    public void destroy() {
    }
}