package servlet;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.CharBuffer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.Main;

@WebServlet("/databaseServlet")
public class Database extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String AUTH_DB = Main.context.getRealPath("Databases/btcDatabase.sqlite");
	
	public static boolean executeUpdate(String sql) throws ClassNotFoundException {
		return Database.executeUpdate(sql, Database.AUTH_DB);
	}
	public static boolean executeUpdate(String sql, String dbName) throws ClassNotFoundException
	{
		// load the sqlite-JDBC driver using the current class loader
	    Class.forName("org.sqlite.JDBC");
	
	    Connection connection = null;
	    try
	    {
			// create a database connection
			connection = DriverManager.getConnection("jdbc:sqlite:" + dbName);
			
			Statement statement = connection.createStatement();
			statement.setQueryTimeout(30);  // set timeout to 30 sec.
			
			statement.executeUpdate(sql);
			return true;
		}
	    catch (SQLException e)
	    {
	    	System.err.println(e.getMessage());
	    }       
	    finally
	    {         
			try {
				if(connection != null)
					connection.close();
			}
			catch(SQLException e)
			{  // Use SQLException class instead.          
				System.err.println(e); 
			}
	    }
	    return false;
	}
	
	public static List<Map<String, Object>> executeQuery(String sql) throws ClassNotFoundException
	{
		return Database.executeQuery(sql, Database.AUTH_DB);
	}
	public static List<Map<String, Object>> executeQuery(String sql, String dbName) throws ClassNotFoundException
	{
		List<Map<String, Object>> resultList = new ArrayList<Map<String, Object>>();
		
		// load the sqlite-JDBC driver using the current class loader
	    Class.forName("org.sqlite.JDBC");
	
	    Connection connection = null;
	    try
	    {
			// create a database connection
			connection = DriverManager.getConnection("jdbc:sqlite:" + dbName);
			
			Statement statement = connection.createStatement();
			statement.setQueryTimeout(30);  // set timeout to 30 sec.
			
			ResultSet resultset = statement.executeQuery(sql);
			
		    Map<String, Object> row = null;

		    ResultSetMetaData metaData = resultset.getMetaData();
		    Integer columnCount = metaData.getColumnCount();

		    while (resultset.next()) {
		        row = new LinkedHashMap<String, Object>();
		        for (int i = 1; i <= columnCount; i++) {
		            row.put(metaData.getColumnName(i), resultset.getObject(i));
		        }
		        resultList.add(row);
		    }
		}
	    catch (SQLException e)
	    {
	    	System.err.println(e.getMessage());
	    }       
	    finally
	    {         
			try {
				if(connection != null)
					connection.close();
			}
			catch(SQLException e)
			{  // Use SQLException class instead.          
				System.err.println(e); 
			}
	    }
	    return resultList;
	}
}