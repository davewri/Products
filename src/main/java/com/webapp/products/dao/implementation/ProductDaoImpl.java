package com.webapp.products.dao.implementation;

import com.webapp.products.dao.ProductDao;
import com.webapp.products.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class ProductDaoImpl implements ProductDao {

    private final String SELECT_SQL = "SELECT * FROM dbo.Product";
    private final String SELECT_SQL_BY_ID = "SELECT * FROM dbo.Product WHERE ProductId = ?";
    private final String SELECT_SQL_BY_CAT_ID = "SELECT * FROM dbo.Product WHERE CategoryId = ?";
    private final String INSERT_SQL = "INSERT INTO Product(ProductName,CategoryId,ProductDescription,ProductStock,ProductPrice) values(?,?,?,?,?)";

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // Implement findAll() which retrieves all products from the DB
    // ProductMapper() converts rows from the result into Product objects
    public List<Product> findAll() {
        return jdbcTemplate.query(SELECT_SQL, new ProductMapper());
    }

    public Product findById(int id) {
        return jdbcTemplate.queryForObject(SELECT_SQL_BY_ID, new Object[]{id}, new ProductMapper());
    }

    public List<Product> findByCategory(int id) {
        return jdbcTemplate.query(SELECT_SQL_BY_CAT_ID, new Object[]{id}, new ProductMapper());
    }
}

class ProductMapper implements RowMapper<Product> {
    @Override
    public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
        Product p = new Product();
        p.setProductId(rs.getInt("ProductId"));
        p.setCategoryId(rs.getInt("CategoryId"));
        p.setProductName(rs.getString("ProductName"));
        p.setProductDescription(rs.getString("ProductDescription"));
        p.setProductStock(rs.getInt("ProductStock"));
        p.setProductPrice(rs.getDouble("ProductPrice"));
        return p;
    }
}

