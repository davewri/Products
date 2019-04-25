package com.webapp.products.controllers;

import com.webapp.products.dao.CategoryDao;
import com.webapp.products.dao.ProductDao;
import com.webapp.products.models.Category;
import com.webapp.products.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ApplicationController {

    @Autowired
    private ProductDao productData;

    // Dao Instance for Category
    @Autowired
    private CategoryDao categoryData;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    //@ResponseBody // Send a direct response without a view template
    public String index(@RequestParam(name = "name", required = false, defaultValue = "David") String name, Model model) {
        model.addAttribute("name", name);
        return "index";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    //@ResponseBody // Send a direct response without a view template
    public String about() {
        //Load and return the about view
        return "about";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String product(@RequestParam(name = "cat", required = false, defaultValue = "0") String cat, Model model){

        List<Product> products;

        // Initialise id (default value used to get all products)
        int id = 0;

        // The parameter may be not be valid - which could crash the application
        // This trys to parse the string converting it to an it
        // If successfull id will be assigned the cat value
        // Otherwise - catch any exception
        // If it fails (i.e an exception occurs) id value will not be changed (from 0).
        try {
            id = Integer.parseInt(cat);
        }
        catch(NumberFormatException e) {
            System.out.println("Bad input for cat id: " + e);
        }

        // If id is 0 then get all products otherwise get products for cat id
        if (id == 0) {
            // Get the product list from the ProductDao instance
            products = productData.findAll();
        } else {
            products = productData.findByCategory(id);
        }


        // Get the product list from the ProductDao instance
        List<Category> categories = categoryData.findAll();

        model.addAttribute("products", products);
        model.addAttribute("categories", categories);

        // Return the view
        return "product";
    }
}
