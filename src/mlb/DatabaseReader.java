package mlb;
/**
 * @author Roman Yasinovskyy
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DatabaseReader {
    private Connection db_connection;
    private final String SQLITEDBPATH = "jdbc:sqlite:data/mlb/mlb.sqlite";
    
    public DatabaseReader() { }
    /**
     * Connect to a database (file)
     */
    public void connect() {
        try {
            this.db_connection = DriverManager.getConnection(SQLITEDBPATH);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseReaderGUI.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * Disconnect from a database (file)
     */
    public void disconnect() {
        try {
            this.db_connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseReaderGUI.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * Populate the list of divisions
     * @param divisions
     */
    public void getDivisions(ArrayList<String> divisions) {
        Statement stat;
        ResultSet results;
        
        this.connect();
        try {
            stat = this.db_connection.createStatement();
            // TODO: Write an SQL statement to retrieve a league (conference) and a division
            String sql = "SELECT DISTINCT conference, division FROM team";
            results = stat.executeQuery(sql);
            // TODO: Add all 6 combinations to the ArrayList divisions
            while (results.next()) {
                String data = results.getString("conference") + " | " + results.getString("division");
                divisions.add(data);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseReader.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            this.disconnect();
        }
    }
 
    /**
     * Read all teams from the database
     * @param confDiv
     * @param teams
     */
    public void getTeams(String confDiv, ArrayList<String> teams) {
        Statement stat;
        ResultSet results;
        String conference = confDiv.split(" | ")[0];
        String division = confDiv.split(" | ")[2];
        
        
        this.connect();
        try {
            stat = this.db_connection.createStatement();
            // TODO: Write an SQL statement to retrieve a teams from a specific division
            String sql = String.format("SELECT DISTINCT name FROM team WHERE division='%s' AND conference='%s';", division, conference);
            results = stat.executeQuery(sql);
            // TODO: Add all 5 teams to the ArrayList teams
            while (results.next()) {
                String data = results.getString("name");
                teams.add(data);
            }
            results.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseReader.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            this.disconnect();
        }
    }
    /**
     * @param teamName
     * @return Team info
     */
    public Team getTeamInfo(String teamName) {
        Team team = null;
        
    /** Connect to database

    \\ Get all information from teams Database (idpk, logo, abbr, conference, division)
    \\ Create a new team Object with all that information

    \\ Build Roster
    \\ Get all players from team
    \\ Create a new player object from each of them and add to roster list

    \\ Get address of team
    \\ Select all from address
    \\ create a new address object from info

    \\ Set logo, roster and address user setters
    */
        this.connect();
        try {
            Statement stat = this.db_connection.createStatement();
            // TODO: Retrieve team info (roster, address, and logo) from the database

            String sql = "﻿SELECT * FROM team";
            ResultSet results = stat.executeQuery(sql);
            Team newTeam;
            //newTeam = newTeam(results[0][1]);
            

        // get a specific team
            // select distinct player from team where teamName=""
            // select site, street, city, state, zip in address where teamName=""
            // select logo from team where teamName=""
        results = stat.executeQuery(sql);
        
        results.close();
        return team;
    } catch (SQLException ex) {
        Logger.getLogger(DatabaseReader.class.getName()).log(Level.SEVERE, null, ex);
        return team;
    }
}}