/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project3;
import com.opencsv.exceptions.CsvValidationException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import static project3.Views.createConnection;

/**
 *
 * @author rublan01
 */
public class Project3 {
    private static final String USERNAME="root";
    private static final String PASSWORD="rublan01!!";
    private static final String CONN_STRING="jdbc:mysql://localhost:3306/UniversityDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    /**
     * @param args the command line arguments
     */
  
    static void createTrigger() {
        Connection conn = createConnection();
        Statement stmt;
        
        //New faculty have endDt set to null
        String trigger = "USE UniversityDB;\n"
                + "CREATE TRIGGER `newFaculty`\n"
                + "AFTER INSERT\n"
                + "ON faculty FOR EACH ROW\n" +
            "BEGIN\n" +
            "SET NEW.endDate = NULL;";


        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(trigger);
            
            System.out.println("new faculty have end date null...thanks trigger!");
            
        } catch (SQLException ex) {
            Logger.getLogger(Project3.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    static void createTrigger2() {
        Connection conn = createConnection();
        Statement stmt;
        
        //New student has major set to null
        String trigger = "USE UniversityDB;\n"
                + "CREATE TRIGGER `newStudent`\n"
                + "AFTER INSERT\n"
                + "ON STUDENT FOR EACH ROW\n" +
            "BEGIN\n" +
            "SET NEW.major = NULL;";


        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(trigger);
            
            System.out.println("new students have major as null...thanks trigger!");
            
        } catch (SQLException ex) {
            Logger.getLogger(Project3.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[] args) throws IOException, FileNotFoundException, CsvValidationException {
        CreateTable.createAll();   
        //createTrigger();
        //createTrigger2();
        InsertData.insertAll();
        Views.createSeniorView();
        Views.createCurrentCoursesView();
    }
}
