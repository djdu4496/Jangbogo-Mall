package com.jangbogo.mall.service;

import com.jangbogo.mall.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao dao;

    @Override
    public int withdrawUser (int idx, String email) throws Exception  {
        return dao.deleteUser(idx, email);
    }

    @Override
    public String findUserEmail (String nick_nm, String pwd) throws Exception {
        return dao.selUserEmail(nick_nm, pwd);
    }

    @Override
    public boolean isUserPresent (String nick_nm, String email) throws Exception {
        return dao.selUserEmail(nick_nm, email) != null;
    }

}
