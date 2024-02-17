package com.graymatter.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.graymatter.demo.model.Employee;
import com.graymatter.demo.model.Rating;
import com.graymatter.demo.service.EmployeeServiceImpl;
import com.graymatter.demo.service.KMeansService;
import com.graymatter.demo.service.RatingServiceImpl;

@Controller
public class RatingController {
	
	@Autowired
	RatingServiceImpl ratingService;

    @Autowired
	EmployeeServiceImpl employeeServiceImpl;

    @Autowired
	KMeansService kMeansService;

    @GetMapping("/admin/rating-history")
	public String ratingDataTable(Model model) {
		model.addAttribute("listRating", ratingService.getAllRating());
		return "rating/rating_table_list";
	}

    @GetMapping("/admin/add-rating-history")
	public String addRating(Model model) {
		model.addAttribute("employees", employeeServiceImpl.getAllEmployees());
		return "rating/add_rating";
	}

    @PostMapping("/admin/addRating")
	public String addRating(Rating rating) {
		
		ratingService.saveRating(rating);
		
		return "redirect:/admin/rating-history";
		
	}

    @GetMapping("/admin/employee-rating-group")
    public java.util.List<java.util.List<Employee>> performKMeansClustering() {
        // Retrieve employees from your data source (e.g., database)
        java.util.List<Employee> employees = getEmployeesFromDataSource();

        // Perform K-means clustering
        return kMeansService.kMeansClustering(employees, 3);
    }

     private java.util.List<Employee> getEmployeesFromDataSource() {
        // Implement logic to retrieve employees from your data source (e.g., database)
        // For simplicity, let's create some dummy employees
        java.util.List<Employee> employees = employeeServiceImpl.getAllEmployees();
        // Add more employees as needed
        return employees;
    }

}
