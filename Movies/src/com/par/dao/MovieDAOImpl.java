package com.par.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.par.entity.Movies;
import com.par.utility.DB;
 

public class MovieDAOImpl implements MovieDAO {

	Connection connection =null;
	ResultSet resultSet = null;
	Statement statement = null;
	PreparedStatement ps = null;
	private int numOfRec;
	
	@Override
	public List<Movies> getMovieList(String lang, String genre, String sort, int start, int numOfRec) {
		
		List<Movies> list = null;
		Movies movie = null;
		boolean flagL = false;
		boolean flagG = false;
		boolean flagS = false;
		
		if(lang != null && genre != null && sort != null){
			if(!lang.equals("''")){
				flagL = true;
			}
			if(!genre.equals("''")){
				flagG = true;
			}
			if(!sort.equals("''")){
				flagS = true;
			}
		}
		
		
		try{
			list = new ArrayList<Movies>();
			String sql = "SELECT SQL_CALC_FOUND_ROWS * FROM tbl_movies m, tbl_category c, tbl_relationship r"
					 +" WHERE CASE WHEN "+flagL+" THEN c.lang like '"+lang+"' ELSE m.id = r.movID AND c.catId = r.catId END AND"
					 +" CASE WHEN "+flagG+" THEN c.genre like '"+genre+"' ELSE m.id = r.movID AND c.catId = r.catId END"
				     +" AND m.id = r.movID AND c.catId = r.catId ORDER BY"
				     +" (CASE WHEN "+flagS+" THEN "+sort+" else '' END) asc"
				     +" LIMIT "+start+", "+numOfRec;
			System.out.println(sql);
			connection = DB.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				movie = new Movies();
				movie.setId(resultSet.getInt("id"));
				movie.setTitle(resultSet.getString("title"));
      			movie.setDescription(resultSet.getString("description"));
				movie.setImage(resultSet.getString("image"));
				movie.setLength(resultSet.getString("movieLen"));
				movie.setRelease(resultSet.getString("relDate"));
				//System.out.println(movie.getTitle());
				list.add(movie);
			}
			resultSet.close();
			
			String sql1 = "SELECT FOUND_ROWS()";
			resultSet = statement.executeQuery(sql1);
			while(resultSet.next()) {
				this.numOfRec = resultSet.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	@Override
	public int getNumberOfRecords() {
		return numOfRec;
	}
	
}
