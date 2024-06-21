package com.smarty.bean;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DisplayDepartmentPhoto", urlPatterns = {"/Department/display_department"})
public class DisplayDepartmentPhoto extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
            PreparedStatement ps = con.prepareStatement("select dep_image from department where dep_id=?");
            String id = request.getParameter("dep_id");
            int dep_id=Integer.parseInt(id);
            ps.setInt(1,dep_id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            Blob b = rs.getBlob("dep_image");
            response.setContentType("image/jpg");
            response.setContentLength((int) b.length());
            InputStream is = b.getBinaryStream();
            OutputStream os = response.getOutputStream();
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            os.write(buf);
            os.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

}