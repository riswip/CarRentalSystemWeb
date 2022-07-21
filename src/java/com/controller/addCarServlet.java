package com.controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.Model.Car;
import com.util.DBConnection;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
@WebServlet("/addCarServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)
public class addCarServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String carName = request.getParameter("carName");
        String brand = request.getParameter("brand");
        String trans = request.getParameter("transmission");
        String platNo = request.getParameter("plateNo");
        double rate = Double.parseDouble(request.getParameter("rate"));
        int passenger = Integer.parseInt(request.getParameter("passenger"));
        String status = request.getParameter("status");

        Part part = request.getPart("file");
        String fileName = extractFileName(part);
        String savePath = "C:\\xampp\\htdocs\\Car-Rental\\web\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);

        part.write(savePath + File.separator);

        try {
            DBConnection con = new DBConnection();
            Car car = new Car();
            car.setCarName(carName);
            car.setBrand(brand);
            car.setTransmission(trans);
            car.setPlateNo(platNo);
            car.setRate(rate);
            car.setPassenger(passenger);
            car.setStatus(status);
            car.setImage(fileName);
            car.setImagePath(savePath);

            //CHECK EXISTING CAR PLATE AVOID DUPLICATE ENTRY
            String sqlCheck = "SELECT * FROM car WHERE plate='" + car.getPlateNo() + "'";
            Statement stmt = con.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery(sqlCheck);

            if (!rs.next()) {

                //INSERT CAR RECORD WHEN THERE IS NO EXISTING CAR WITH SAME PLATE
                String sql = "INSERT INTO car(carName, brand, transmission, plate, rateHour, passenger, carStatus, image, img_path) "
                        + "VALUES(?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = con.getConnection().prepareStatement(sql);
                ps.setString(1, car.getCarName());
                ps.setString(2, car.getBrand());
                ps.setString(3, car.getTransmission());
                ps.setString(4, car.getPlateNo());
                ps.setDouble(5, car.getRate());
                ps.setInt(6, car.getPassenger());
                ps.setString(7, car.getStatus());
                ps.setString(8, car.getImage());
                ps.setString(9, car.getImagePath());
                ps.executeUpdate();
                
                request.setAttribute("message", "<p class='alert alert-success'>Add car successfully</p>");
                request.getRequestDispatcher("admin-add-car.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "<p class='alert alert-danger'>Failed to add car! Plate No. " + car.getPlateNo() + " already exist.</p>");
                request.getRequestDispatcher("admin-add-car.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.getMessage();
        }
    }

    private String extractFileName(Part part) {
        String display = part.getHeader("content-disposition");
        String[] items = display.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
