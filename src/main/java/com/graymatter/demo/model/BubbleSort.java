package com.graymatter.demo.model;

import java.util.List;

public class BubbleSort {
    public static void sortEmployeesById(List<Employee> employees) {
        int n = employees.size();
        for (int i = 0; i < n-1; i++) {
            for (int j = 0; j < n-i-1; j++) {
                if (employees.get(j).getId() > employees.get(j+1).getId()) {
                    Employee temp = employees.get(j);
                    employees.set(j, employees.get(j+1));
                    employees.set(j+1, temp);
                }
            }
        }
    }
}
