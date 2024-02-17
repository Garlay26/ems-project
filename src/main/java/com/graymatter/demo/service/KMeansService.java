package com.graymatter.demo.service;
import org.springframework.stereotype.Service;

import com.graymatter.demo.model.Employee;

import java.util.ArrayList;
import java.util.List;

@Service
public class KMeansService {

    public List<List<Employee>> kMeansClustering(List<Employee> employees, int k) {
        // Initialize k centroids randomly
        List<Employee> centroids = selectRandomCentroids(employees, k);

        // Initialize clusters
        List<List<Employee>> clusters = new ArrayList<>();
        for (int i = 0; i < k; i++) {
            clusters.add(new ArrayList<>());
        }

        boolean converged = false;
        while (!converged) {
            // Assign each employee to the nearest centroid
            for (Employee employee : employees) {
                int closestCentroidIndex = findClosestCentroidIndex(employee, centroids);
                clusters.get(closestCentroidIndex).add(employee);
            }

            // Update centroids
            converged = true;
            for (int i = 0; i < k; i++) {
                Employee oldCentroid = centroids.get(i);
                Employee newCentroid = calculateMean(clusters.get(i));
                if (!oldCentroid.equals(newCentroid)) {
                    centroids.set(i, newCentroid);
                    converged = false;
                }
                clusters.get(i).clear(); // Clear the cluster for the next iteration
            }
        }

        return clusters;
    }

    private List<Employee> selectRandomCentroids(List<Employee> employees, int k) {
        // Implement random centroid selection logic
        // For simplicity, let's assume we just select the first k employees as centroids
        return employees.subList(0, k);
    }

    private int findClosestCentroidIndex(Employee employee, List<Employee> centroids) {
        // Implement logic to find the index of the nearest centroid to the given employee
        // For simplicity, let's use Euclidean distance
        // You can replace this with more sophisticated distance metrics if needed
        int closestIndex = 0;
        double minDistance = Double.MAX_VALUE;
        for (int i = 0; i < centroids.size(); i++) {
            double distance = Math.abs(employee.getRating() - centroids.get(i).getRating());
            if (distance < minDistance) {
                minDistance = distance;
                closestIndex = i;
            }
        }
        return closestIndex;
    }

    private Employee calculateMean(List<Employee> employees) {
        // Calculate the mean of ratings for the given employees
        double sum = 0;
        for (Employee employee : employees) {
            sum += employee.getRating();
        }
        double mean = sum / employees.size();
        return new Employee("centroid", mean); // Create a dummy centroid employee
    }
}
