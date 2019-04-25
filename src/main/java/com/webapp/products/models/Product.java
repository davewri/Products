package com.webapp.products.models;

public class Product {
    private int ProductId;
    private int CategoryId;
    private String ProductName, ProductDescription;
    private int ProductStock;
    private double ProductPrice;

    public Product() {
    }

    public Product(int productId, int categoryId, String productName, String productDescription, int productStock, double productPrice) {
        ProductId = productId;
        CategoryId = categoryId;
        ProductName = productName;
        ProductDescription = productDescription;
        ProductStock = productStock;
        ProductPrice = productPrice;
    }

    public int getProductId() {
        return ProductId;
    }

    public int getCategoryId() {
        return CategoryId;
    }

    public String getProductName() {
        return ProductName;
    }

    public String getProductDescription() {
        return ProductDescription;
    }

    public int getProductStock() {
        return ProductStock;
    }

    public double getProductPrice() {
        return ProductPrice;
    }

    public void setProductId(int productId) {
        ProductId = productId;
    }

    public void setCategoryId(int categoryId) {
        CategoryId = categoryId;
    }

    public void setProductName(String productName) {
        ProductName = productName;
    }

    public void setProductDescription(String productDescription) {
        ProductDescription = productDescription;
    }

    public void setProductStock(int productStock) {
        ProductStock = productStock;
    }

    public void setProductPrice(double productPrice) {
        ProductPrice = productPrice;
    }
}