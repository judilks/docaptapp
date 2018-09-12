package com.yash.dams.serviceimpl;

import com.yash.dams.dao.UserDao;
import com.yash.dams.domain.User;
import com.yash.dams.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public void register(User user) {
        userDao.insert(user);
    }
}
