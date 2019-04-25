package com.webapp.products.dao.implementation;

import com.webapp.products.dao.CategoryDao;
import com.webapp.products.models.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CategoryDaoImpl implements CategoryDao {

    // SQL for selecting Categorys
    private final String SELECT_SQL = "SELECT * FROM dbo.Category";
    private final String SELECT_SQL_BY_ID = "SELECT * FROM dbo.Category WHERE CategoryId = ?";

    // Spring JdbcTempate helps with storing and retrieving data
    @Autowired
    private JdbcTemplate jdbcTemplate;

    // Implement findAll() which retrieves all Categorys from the DB
    // CategoryMapper() converts rows from the result into Category objects
    public List<Category> findAll() {

        // Use jdbcTemplate to execute query
        // Then use ProductMapper to crate a category object for each row in the query result
        return jdbcTemplate.query(SELECT_SQL, new CategoryMapper());
    }

    // Return a single Category matching id
    public Category findById(int id) {
        return jdbcTemplate.queryForObject(SELECT_SQL_BY_ID, new Object[]{id}, new CategoryMapper());
    }
}

// This class converts resultset rows (from the sql execution) into Java objects
class CategoryMapper implements RowMapper<Category> {
    @Override
    public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
        Category c = new Category();
        c.setCategoryId(rs.getInt("CategoryId"));
        c.setCategoryName(rs.getString("CategoryName"));
        c.setCategoryDescription(rs.getString("CategoryDescription"));
        return c;
    }
}