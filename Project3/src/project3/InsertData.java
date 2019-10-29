/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project3;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvValidationException;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 *
 * @author rublan01
 */
    
public class InsertData {
    private static final String USERNAME="root";
    private static final String PASSWORD= "rublan01!!";
    private static final String CONN_STRING = "jdbc:mysql://localhost:3306/UniversityDB?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    
    private static void insertDept() throws FileNotFoundException, IOException, CsvValidationException {

        Connection conn;
        CSVReader reader;
        String filename = "department.csv";

        try {
            reader = new CSVReader(new FileReader(filename));
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
            //System.out.println("Connected");
            Statement stmt = (Statement) conn.createStatement();
            String [] nextLine;
            reader.readNext();
            while ((nextLine = reader.readNext()) != null) {
                String query = "INSERT INTO DEPARTMENT(name,building) VALUES('"+nextLine[0]+"','"+nextLine[1]+"');";
                //System.out.println(query);
                stmt.executeUpdate(query);
            }
            System.out.println("Department table populated");
        } catch(SQLException e){
               System.err.println(e);
        }
    }

    private static void insertSemester() throws FileNotFoundException, IOException, CsvValidationException {

        Connection conn;
        CSVReader reader;
        String filename = "semester.csv";

        try {
            reader = new CSVReader(new FileReader(filename));
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
            //System.out.println("Connected");
            Statement stmt = (Statement) conn.createStatement();
            String [] nextLine;
            reader.readNext();
            while ((nextLine = reader.readNext()) != null) {
                String query = "INSERT INTO SEMESTER(year,season) VALUES('"+nextLine[0]+"','"+nextLine[1]+"');";
                //System.out.println(query);
                stmt.executeUpdate(query);
            }
            System.out.println("Semester table populated");
        } catch(SQLException e){
               System.err.println(e);
        }
    }
    
        private static void insertLocation() throws FileNotFoundException, IOException, CsvValidationException {

        Connection conn;
        CSVReader reader;
        String filename = "location.csv";

        try {
            reader = new CSVReader(new FileReader(filename));
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
            //System.out.println("Connected");
            Statement stmt = (Statement) conn.createStatement();
            String [] nextLine;
            reader.readNext();
            while ((nextLine = reader.readNext()) != null) {
                String query = "INSERT INTO LOCATION(building,room,purpose) VALUES('"+nextLine[0]+"','"+nextLine[1]+"','"+nextLine[2]+"');";
                //System.out.println(query);
                stmt.executeUpdate(query);
            }
            System.out.println("Location table populated");
        } catch(SQLException e){
               System.err.println(e);
        }
    }
        
    private static void insertMajor() throws FileNotFoundException, IOException, CsvValidationException {

        Connection conn;
        CSVReader reader;
        String filename = "major.csv";

        try {
            reader = new CSVReader(new FileReader(filename));
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
            //System.out.println("Connected");
            Statement stmt = (Statement) conn.createStatement();
            String [] nextLine;
            reader.readNext();
            while ((nextLine = reader.readNext()) != null) {
                // query to select deptId from dept where name matches nextLine[0]
                String queryDept = "SELECT * FROM department WHERE name='"+nextLine[0]+"';";
                ResultSet deptResults = stmt.executeQuery(queryDept);
                while (deptResults.next()) {
                    String deptId = deptResults.getString("id");
                    String insertQuery = "INSERT INTO MAJOR(department,name) VALUES('"+deptId+"','"+nextLine[1]+"');";
                    //System.out.println("insertQuery: " +insertQuery);
                    Statement stmt2 = (Statement) conn.createStatement();
                    stmt2.executeUpdate(insertQuery);
                }
            }
            System.out.println("Major table populated");
        } catch(SQLException e){
               System.err.println(e);
        }
    }
    
    private static void insertCourse() throws FileNotFoundException, IOException, CsvValidationException {

        Connection conn;
        CSVReader reader;
        String filename = "course.csv";

        try {
            reader = new CSVReader(new FileReader(filename));
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
            Statement stmt = (Statement) conn.createStatement();
            String [] nextLine;
            reader.readNext();
            while ((nextLine = reader.readNext()) != null) {
                // query to select deptId from dept where name matches nextLine[0]
                String queryDept = "SELECT * FROM department WHERE name='"+nextLine[0]+"';";
                ResultSet deptResults = stmt.executeQuery(queryDept);
                while (deptResults.next()) {
                    String deptId = deptResults.getString("id");
                    String insertQuery = "INSERT INTO COURSE(department,abbreviation,number,title,credits) "
                            + "VALUES('"+deptId+"','"+nextLine[1]+"','"+nextLine[2]+"','"+nextLine[3]+"','"+nextLine[4]+"');";
                    Statement stmt2 = (Statement) conn.createStatement();
                    stmt2.executeUpdate(insertQuery);
                }
            }
            System.out.println("Course table populated");
        } catch(SQLException e){
               System.err.println(e);
        }
    }
    
    public static int getRandomInteger(int maximum, int minimum){
        return ((int) (Math.random()*(maximum - minimum))) + minimum;
    }
    
    private static void insertFaculty() throws FileNotFoundException, IOException, CsvValidationException {
        
        Connection conn;
        CSVReader reader;
        String filename = "faculty.csv";

        try {
            reader = new CSVReader(new FileReader(filename));
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);            
            Statement stmt = (Statement) conn.createStatement();
            String [] nextLine;
            reader.readNext();
            
            while ((nextLine = reader.readNext()) != null) {
                String queryDept = "SELECT * FROM department WHERE name='"+nextLine[1]+"';";
                ResultSet deptResults = stmt.executeQuery(queryDept);
                
                while (deptResults.next()) {
                    String deptId = deptResults.getString("id");
                    
                    int startDt = getRandomInteger(8, 1);
                    int office = getRandomInteger(25, 1);

                    String insertQuery = "INSERT INTO FACULTY(name, department,startDate,endDate,office) "
                            + "VALUES('"+nextLine[0]+"','"+deptId+"','"+startDt+"',null,'"+office+"');";
                    Statement stmt2 = (Statement) conn.createStatement();
                    stmt2.executeUpdate(insertQuery);
                }
            }
            System.out.println("Faculty table populated");
        } catch(SQLException e){
               System.err.println(e);
        }
    }   
    
    //get students - faker; use mockeroo to create fake data CSV
    //jar file of faker in course repository
    //once you have your MYSQL then "DUMP" your database
    //2,000 students
    
    
    private static void insertSection() throws FileNotFoundException, IOException, CsvValidationException {
        
        Connection conn;
        CSVReader reader;
        String filename = "course.csv";
    
        try {
            reader = new CSVReader(new FileReader(filename));
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);            
            Statement stmt = (Statement) conn.createStatement();
            String[] nextLine;
            reader.readNext();
            
            List times = new ArrayList();
            times.add("08:00:00");
            times.add("09:15:00");
            times.add("11:00:00");
            times.add("12:15:00");
            times.add("01:30:00");
            times.add("02:45:00");
            times.add("04:00:00");

            while ((nextLine = reader.readNext()) != null) {
                
                int course = getRandomInteger(63, 1);
                int instructor = getRandomInteger(247, 1);
                int offered = getRandomInteger(8, 1);
                int location = getRandomInteger(25, 1);
                int i = getRandomInteger(6,0); //generate times
                
                //TODO: Assume all 1xx courses have 4 sections, 2xx and 3xx courses have 2 section, 
                //4xx courses have 1 section per year.

                String insertQuery = "INSERT INTO SECTION(course,instructor,offered,location,startHour) "
                        + "VALUES('"+course+"','"+instructor+"','"+offered+"','"+location+"','"+times.get(i)+"');";
                //System.out.println(insertQuery);
                stmt.executeUpdate(insertQuery);
            }
            System.out.println("Section table populated");
        } catch(SQLException e){
               System.err.println(e);
        }
    } 
    
    
    private static void insertStudent() throws FileNotFoundException, IOException, CsvValidationException {
        
        Connection conn;
        CSVReader reader;
        String filename = "students.csv";
    
        try {
            reader = new CSVReader(new FileReader(filename));
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);            
            Statement stmt = (Statement) conn.createStatement();
            String[] nextLine;
            reader.readNext();
         
            while ((nextLine = reader.readNext()) != null) {
                
                int advisor = getRandomInteger(247, 1);
                int gradDate = getRandomInteger(8, 1);
                int major = getRandomInteger(53, 1);

                String insertQuery = "INSERT INTO STUDENT(name,graduationDate,major,advisor) "
                        + "VALUES('"+nextLine[0]+"','"+gradDate+"','"+major+"','"+advisor+"');";
                //System.out.println(insertQuery);
                stmt.executeUpdate(insertQuery);
            }
            System.out.println("Student table populated");
        } catch(SQLException e){
               System.err.println(e);
        }
    } 
    
    private static void insertEnrollment() throws FileNotFoundException, IOException, CsvValidationException {
        
        Connection conn;
        CSVReader reader;
        String filename = "students.csv";
    
        try {
            reader = new CSVReader(new FileReader(filename));
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);            
            Statement stmt = (Statement) conn.createStatement();
            String[] nextLine;
            reader.readNext();
            
            List grades = new ArrayList();
            grades.add("A");
            grades.add("B");
            grades.add("C");
            grades.add("D");
            grades.add("F");
            
            //query to get count of all recors in section and use that variable number amount to generate range for getRandomInt
//            Statement stmt2 = (Statement) conn.createStatement();
//            String countQuery = "SELECT count(id) as countSect FROM SECTION";
//            ResultSet countSection = stmt2.executeQuery(countQuery);
//            System.out.println(countSection.getString("countSect"));
            
            while ((nextLine = reader.readNext()) != null) {
                
                int student = getRandomInteger(1999, 1);
                int section = getRandomInteger(631, 1);
                int i = getRandomInteger(4,0); //generate grades

                String insertQuery = "INSERT INTO ENROLLMENT(student,section,grade) "
                        + "VALUES('"+student+"','"+section+"','"+grades.get(i)+"');";
                //System.out.println(insertQuery);
                stmt.executeUpdate(insertQuery);
            }
            System.out.println("Enroll table populated");
        } catch(SQLException e){
               System.err.println(e);
        }
    } 
    
    static void insertAll() throws IOException, FileNotFoundException, CsvValidationException {
        insertDept();
        insertSemester();
        insertLocation();
        insertMajor();
        insertCourse();
        insertFaculty();
        insertSection();
        insertStudent();
        insertEnrollment();
    }
}
