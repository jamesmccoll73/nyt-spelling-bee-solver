import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Serial;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/solver")
public class Solver extends HttpServlet{
	
	@Serial
    private static final long serialVersionUID = 1L;
    private static final String url = "jdbc:mysql://localhost:3306/PA4Users";
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	String lettersString = request.getParameter("letters");
    	String mustUseLetter = request.getParameter("mustUseLetter");
    	
    	File f = new File("/Users/jamesmccoll/Desktop/Shairport/SpellingBeeSolver/words_alpha.txt");
    	BufferedReader brDic = new BufferedReader(new FileReader(f));
		String st;
	    Set<String> wordsSet = new HashSet<String>();
	    
	    while ((st = brDic.readLine()) != null) {
	    	wordsSet.add(st);
	    }
	   
	    Set<String> letters = new HashSet<String>();
	    for(int i = 0; i < lettersString.length(); i++) {
	    	letters.add(lettersString.substring(i, i+1));
	    }
	    
	    ArrayList<String> solutions = new ArrayList<String>();
	    
	    for(String s: wordsSet) {
	    	if(s.contains(mustUseLetter) && validWord(letters, s)) {
	    		solutions.add(s);
	    	}
	    }
	    
	    request.setAttribute("solutions", solutions);
	    request.getRequestDispatcher("homepage.jsp").include(request, response);
	    
		
    }
    
    public static boolean validWord(Set<String> letters, String s){
		if(s.length() < 4) {
			return false;
		}
		for(int i = 0; i < s.length(); i++) {
	    	if(!(letters.contains(s.substring(i,i+1)))) {
	    		return false;
	    	}
	    }
	    return true;
	    
	}
	
}
