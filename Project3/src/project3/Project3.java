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
  
    public static void main(String[] args) throws IOException, FileNotFoundException, CsvValidationException {
        CreateTable.createAll();   
        InsertData.insertAll();
        Views.createSeniorView();
    }
}
