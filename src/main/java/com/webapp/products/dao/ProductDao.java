package com.webapp.products.dao;

import com.webapp.products.models.Product;

import java.util.List;

public interface ProductDao {

    // Return a list containing all the product objects
    public List<Product> findAll();

    // Return a product with matching id
    public Product findById(int id);

    // return a list of products in a category
    public List<Product> findByCategory(int id);

    //Updating an existing product - return the number of rows affected
    public int update(final Product product);

}
