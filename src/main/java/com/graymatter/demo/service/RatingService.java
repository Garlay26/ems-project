package com.graymatter.demo.service;

import java.util.List;

import com.graymatter.demo.model.Rating;

public interface RatingService {
	List<Rating> getAllRating();
	void saveRating(Rating rating);
    List<Rating> getRatingReport();
}
