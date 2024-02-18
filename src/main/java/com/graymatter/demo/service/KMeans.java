package com.graymatter.demo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class KMeans {
    private int k;
    private int maxIterations;
    private List<double[]> centroids;
    private List<Integer>[] clusters;
    private double[][] data;

    public KMeans(int k) {
        this.k = k;
        this.maxIterations = 100; // Default value
        this.centroids = new ArrayList<>();
        this.clusters = new ArrayList[k];
        for (int i = 0; i < k; i++) {
            clusters[i] = new ArrayList<>();
        }
    }
    public void init(double[][] data) {
        this.data = data;
    }
    
    public KMeans(int k, int maxIterations) {
        this.k = k;
        this.maxIterations = maxIterations;
        this.centroids = new ArrayList<>();
        this.clusters = new ArrayList[k];
        for (int i = 0; i < k; i++) {
            clusters[i] = new ArrayList<>();
        }
    }

    public void fit(double[][] data) {
        // Initialize centroids randomly
        Random random = new Random();
        for (int i = 0; i < k; i++) {
            int randIndex = random.nextInt(data.length);
            centroids.add(data[randIndex]);
        }

        // Iteratively assign data points to clusters and update centroids
        for (int iter = 0; iter < maxIterations; iter++) {
            // Clear clusters
            for (List<Integer> cluster : clusters) {
                cluster.clear();
            }

            // Assign each data point to the nearest centroid
            for (int i = 0; i < data.length; i++) {
                int nearestCentroidIndex = findNearestCentroidIndex(data[i]);
                clusters[nearestCentroidIndex].add(i);
            }

            // Update centroids
            for (int i = 0; i < k; i++) {
                double[] newCentroid = computeCentroid(data, clusters[i]);
                centroids.set(i, newCentroid);
            }
        }
    }
    public void calculate() {
        // Initialize centroids randomly
        Random random = new Random();
        for (int i = 0; i < k; i++) {
            int randIndex = random.nextInt(data.length);
            centroids.add(data[randIndex]);
        }

        // Iteratively assign data points to clusters and update centroids
        for (int iter = 0; iter < maxIterations; iter++) {
            // Clear clusters
            for (List<Integer> cluster : clusters) {
                cluster.clear();
            }

            // Assign each data point to the nearest centroid
            for (int i = 0; i < data.length; i++) {
                int nearestCentroidIndex = findNearestCentroidIndex(data[i]);
                clusters[nearestCentroidIndex].add(i);
            }

            // Update centroids
            for (int i = 0; i < k; i++) {
                double[] newCentroid = computeCentroid(data, clusters[i]);
                centroids.set(i, newCentroid);
            }
        }
    }

    private int findNearestCentroidIndex(double[] point) {
        double minDistance = Double.MAX_VALUE;
        int nearestCentroidIndex = -1;
        for (int i = 0; i < k; i++) {
            double distance = euclideanDistance(point, centroids.get(i));
            if (distance < minDistance) {
                minDistance = distance;
                nearestCentroidIndex = i;
            }
        }
        return nearestCentroidIndex;
    }

    private double[] computeCentroid(double[][] data, List<Integer> cluster) {
        double[] centroid = new double[data[0].length];
        for (int i : cluster) {
            for (int j = 0; j < data[i].length; j++) {
                centroid[j] += data[i][j];
            }
        }
        for (int j = 0; j < centroid.length; j++) {
            centroid[j] /= cluster.size();
        }
        return centroid;
    }

    private double euclideanDistance(double[] point1, double[] point2) {
        double sum = 0.0;
        for (int i = 0; i < point1.length; i++) {
            sum += Math.pow(point1[i] - point2[i], 2);
        }
        return Math.sqrt(sum);
    }

    public List<double[]> getCentroids() {
        return centroids;
    }

    public List<Integer> getCluster(int dataIndex) {
        for (int i = 0; i < k; i++) {
            if (clusters[i].contains(dataIndex)) {
                return clusters[i];
            }
        }
        return null;
    }

    public List<Integer>[] getClusters() {
        return clusters;
    }
    
}
