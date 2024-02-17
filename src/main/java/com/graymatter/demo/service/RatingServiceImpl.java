package com.graymatter.demo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graymatter.demo.model.Employee;
import com.graymatter.demo.model.Rating;
import com.graymatter.demo.repo.EmployeeRepository;
import com.graymatter.demo.repo.RatingRepository;

@Service
public class RatingServiceImpl implements RatingService {
	
	@Autowired
	private RatingRepository ratingRepository;

    @Autowired
	private EmployeeRepository employeeRepository;

    @Override
    public List<Rating> getAllRating() {
        return ratingRepository.findAll();
    }

    @Override
    public List<Rating> getRatingReport() {
        return ratingRepository.findAll();
    }

    @Override
	public void saveRating(Rating rating) {
        java.util.Optional<Employee> optionalEmployee = employeeRepository.findById(rating.getEmployeeId());
        if (optionalEmployee.isPresent()) {
            Employee employee = optionalEmployee.get();
            Integer newRating = employee.getRating() + rating.getRating();
            employee.setRating(newRating);
            employeeRepository.save(employee);
        } else {
            throw new IllegalArgumentException("Employee not found with id: " + rating.getEmployeeId());
        }
		this.ratingRepository.save(rating);
	}

}
