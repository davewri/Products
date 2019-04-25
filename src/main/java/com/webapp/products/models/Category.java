package com.webapp.products.models;

public class Category {
    private int CategoryId;
    private String CategoryName, CategoryDescription;

    public Category() {
    }

    public Category(int categoryId, String categoryName, String categoryDescription) {
        CategoryId = categoryId;
        CategoryName = categoryName;
        CategoryDescription = categoryDescription;
    }

    public int getCategoryId() {
        return CategoryId;
    }

    public void setCategoryId(int categoryId) {
        CategoryId = categoryId;
    }

    public String getCategoryName() {
        return CategoryName;
    }

    public void setCategoryName(String categoryName) {
        CategoryName = categoryName;
    }

    public String getCategoryDescription() {
        return CategoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        CategoryDescription = categoryDescription;
    }
}
