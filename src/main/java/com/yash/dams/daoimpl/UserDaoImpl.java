package com.yash.dams.daoimpl;

import com.yash.dams.dao.UserDao;
import com.yash.dams.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void insert(User user) {
        String sql="INSERT INTO users (first_name,last_name,contact, email,address,loginname,password) values(?,?,?,?,?,?,?)";
        Object[] params=new Object[]{
                user.getFirst_Name(),
                user.getLast_Name(),
                user.getContact(),
                user.getEmail(),
                user.getAddress(),
                user.getLoginname(),
                user.getPassword()
        };

        jdbcTemplate.update(sql, params);
    }
}
