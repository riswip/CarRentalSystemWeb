/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.util.DBConnection;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Asyraf
 */
@WebServlet("/uploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)
public class uploadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Part part = request.getPart("file");
        String fileName = extractFileName(part);
        String savePath = "C:\\xampp\\htdocs\\Car-Rental\\web\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        
        part.write(savePath + File.separator);
        
        try {
            DBConnection con = new DBConnection();
            String sql = "INSERT INTO images(image, img_path) VALUES(?,?)";
            PreparedStatement ps = con.getConnection().prepareStatement(sql);
            ps.setString(1, fileName);
            ps.setString(2, savePath);
            ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    private String extractFileName(Part part) {
        String display = part.getHeader("content-disposition");
        String[] items = display.split(";");
        for(String s : items) {
            if(s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
