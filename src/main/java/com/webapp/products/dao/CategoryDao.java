package com.webapp.products.dao;

import com.webapp.products.models.Category;

import java.util.List;

public interface CategoryDao {

    // Return a list containing all the product objects
    public List<Category> findAll();

    // Return a product with matching id
    public Category findById(int id);
}
