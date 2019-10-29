/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project3;

import java.sql.Connection;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import static project3.CreateTable.createConnection;


/**
 *
 * @author rublan01
 */
public class Views {
    
    private static final String USERNAME="root";
    private static final String PASSWORD= "rublan01!!";
    private static final String CONN_STRING = "jdbc:mysql://localhost:3306/UniversityDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        
    static Connection createConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
            return conn;
        }catch(SQLException e){
            System.err.println(e);
        }
        return conn;
    }
    
    static void createSeniorView() {
        Connection conn = createConnection();
        Statement stmt;
        
        String seniorView = "CREATE VIEW `seniors` AS\n" +
            "select name from UniversityDB.STUDENT\n" +
            "where graduationDate = 8 || 9;";

        try {
            System.out.println("Starting senior view");
            stmt = conn.createStatement();
            stmt.executeUpdate(seniorView);
            
            System.out.println("Seniors view created");
            
        } catch (SQLException ex) {
            Logger.getLogger(Project3.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    static void createCurrentCoursesView() {
        Connection conn = createConnection();
        Statement stmt;
        
        String facultyView = "USE UniversityDB;\n"
                + "CREATE VIEW `facultyInfo` AS\n" +
            "select * from faculty\n" +
            "INNER JOIN department WHERE department.id=faculty.department;";

        try {
            stmt = conn.createStatement();
            //stmt.executeUpdate(facultyView);
            
            System.out.println("Faculty Info view created");
            
        } catch (SQLException ex) {
            Logger.getLogger(Project3.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
