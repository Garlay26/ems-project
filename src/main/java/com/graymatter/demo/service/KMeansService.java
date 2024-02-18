package com.graymatter.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.graymatter.demo.model.Employee;

@Service
public class KMeansService {
    
    public List<Employee> clusterEmployees(List<Employee> employees, int k) {
        
        double[][] data = new double[employees.size()][1];
        for (int i = 0; i < employees.size(); i++) {
            data[i][0] = employees.get(i).getRating();
        }

        KMeans kmeans = new KMeans(k);
        kmeans.fit(data);
        List<Integer>[] clusters = kmeans.getClusters();

        // Assign clusters to employees
        for (int clusterIndex = 0; clusterIndex < clusters.length; clusterIndex++) {
            List<Integer> cluster = clusters[clusterIndex];
            for (int dataIndex : cluster) {
                Employee employee = employees.get(dataIndex);
                employee.setCluster(clusterIndex);
            }
        }

        return employees;
    }
}
