package com.par.dao;

import java.util.List;

import com.par.entity.Movies;

public interface MovieDAO {

	List<Movies> getMovieList(String lang, String genre, String sort, int start, int numOfRec);

	int getNumberOfRecords();

}
