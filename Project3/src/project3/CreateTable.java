/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project3;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author rublan01
 */

public class CreateTable {
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
    
    static void createTable(String sqlstatement) {
        Connection conn = createConnection();
        Statement stmt;

        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(sqlstatement);
        } catch (SQLException ex) {
            Logger.getLogger(Project3.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    static void createAll() {
        String department = "CREATE TABLE if not exists UniversityDB.department"
                + "(id INTEGER not NULL AUTO_INCREMENT, "
                + "name VARCHAR(50), "
                + "building VARCHAR(30), "
                + "PRIMARY KEY (id))";
        
        String location = "CREATE TABLE if not exists UniversityDB.location"
                + "(id INTEGER not NULL AUTO_INCREMENT, "
                + "building VARCHAR(30), "
                + "room INTEGER, "
                + "purpose VARCHAR(50), "
                + "PRIMARY KEY (id))";
        
        String semester = "CREATE TABLE if not exists UniversityDB.semester"
                + "(id INTEGER not NULL AUTO_INCREMENT, "
                + "year INTEGER, "
                + "season VARCHAR (30), "
                + "PRIMARY KEY (id))";
        
        String course = "CREATE TABLE if not exists UniversityDB.course"
                + "(id INTEGER not NULL AUTO_INCREMENT, "
                + "department INT, "
                + "CONSTRAINT fk_dept_course FOREIGN KEY (department) REFERENCES department(id), "
                + "abbreviation VARCHAR(6),"
                + "number INT, "
                + "title VARCHAR(50), "
                + "credits INT, "
                + "PRIMARY KEY (id))";
        
        String major = "CREATE TABLE if not exists UniversityDB.major"
                + "(id INTEGER not NULL AUTO_INCREMENT, "
                + "department INT, "
                + "CONSTRAINT fk_dept_major FOREIGN KEY (department) REFERENCES department(id), "
                + "name VARCHAR(50), "
                + "PRIMARY KEY (id))";
        
        String faculty = "CREATE TABLE if not exists UniversityDB.faculty"
                + "(id INTEGER not NULL AUTO_INCREMENT, "
                + "name VARCHAR(30), "
                + "department INT, "
                + "CONSTRAINT fk_dept_fac FOREIGN KEY (department) REFERENCES department(id), "
                + "startDate INT, "
                + "CONSTRAINT fk_startDate_fac FOREIGN KEY (startDate) REFERENCES semester(id), "
                + "endDate INT NULL, "
                + "CONSTRAINT fk_endDate_fac FOREIGN KEY (endDate) REFERENCES semester(id), "
                + "office INT, "
                + "CONSTRAINT fk_office_fac FOREIGN KEY (office) REFERENCES location(id), "
                + "PRIMARY KEY (id))";
        
        String section = "CREATE TABLE if not exists UniversityDB.section"
                + "(id INTEGER not NULL AUTO_INCREMENT, "
                + "course INT, "
                + "CONSTRAINT fk_course_sec FOREIGN KEY (course) REFERENCES course(id), "
                + "instructor INT, "
                + "CONSTRAINT fk_instructor_sec FOREIGN KEY (instructor) REFERENCES faculty(id), "
                + "offered INT, "
                + "CONSTRAINT fk_offered_sec FOREIGN KEY (offered) REFERENCES semester(id), "
                + "location INT, "
                + "CONSTRAINT fk_location_sec FOREIGN KEY (location) REFERENCES location(id), "
                + "startHour TIME, "
                + "PRIMARY KEY (id))";
        
        String student = "CREATE TABLE if not exists UniversityDB.student"
                + "(id INTEGER not NULL AUTO_INCREMENT, "
                + "name VARCHAR(30), "
                + "graduationDate INT, "
                + "CONSTRAINT fk_gradDate_student FOREIGN KEY (graduationDate) REFERENCES semester(id), "
                + "major INT NULL, "
                + "CONSTRAINT fk_major_student FOREIGN KEY (major) REFERENCES major(id), "
                + "advisor INT, "
                + "CONSTRAINT fk_advisor_student FOREIGN KEY (advisor) REFERENCES faculty(id), "
                + "PRIMARY KEY (id))";
        
        String enrollment = "CREATE TABLE if not exists UniversityDB.enrollment"
                + "(id INTEGER not NULL AUTO_INCREMENT, "
                + "student INT, "
                + "CONSTRAINT fk_student_enroll FOREIGN KEY (student) REFERENCES student(id), "
                + "section INT, "
                + "CONSTRAINT fk_section_enroll FOREIGN KEY (section) REFERENCES section(id), "
                + "grade VARCHAR(5) NULL, "
                + "PRIMARY KEY (id))";
        
        createTable(department);
        createTable(location);
        createTable(semester);
        createTable(course);
        createTable(major);
        createTable(faculty);
        createTable(section);
        createTable(student);
        createTable(enrollment);

    }
   
}
