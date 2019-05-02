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

    public Product create(final Product product);

    // Delete product with matching id
    public int delete(int id);

    // return a list of products matching search term
    public List<Product> findBySearchText(String searchText);
}
