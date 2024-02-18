package com.graymatter.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import com.graymatter.demo.model.Employee;
import com.graymatter.demo.model.Rating;
import com.graymatter.demo.service.EmployeeServiceImpl;
import com.graymatter.demo.service.KMeansService;
import com.graymatter.demo.service.RatingServiceImpl;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

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
    public String clusterEmployees(Model model) {
        List<Employee> employees = employeeServiceImpl.getAllEmployees();
        int k = 3; 
        List<Employee> clusteredEmployees = kMeansService.clusterEmployees(employees, k);
        // / Group employees by cluster
        Map<Integer, List<Employee>> employeesByCluster = clusteredEmployees.stream()
                .collect(Collectors.groupingBy(Employee::getCluster));

        // Calculate maximum rating for each cluster
        Map<Integer, Double> maxRatings = employeesByCluster.entrySet().stream()
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        entry -> entry.getValue().stream()
                                .mapToDouble(Employee::getRating)
                                .max()
                                .orElse(0.0)
                ));

        // Sort the map entries by maximum rating in descending order
        List<Map.Entry<Integer, List<Employee>>> sortedEntries = employeesByCluster.entrySet().stream()
                .sorted(Comparator.comparingDouble(entry -> maxRatings.get(((Entry) entry).getKey())).reversed())
                .collect(Collectors.toList());

        model.addAttribute("employeesByCluster", sortedEntries);
        return "rating/clusters";
    }

}
