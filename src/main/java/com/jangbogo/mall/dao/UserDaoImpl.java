package com.jangbogo.mall.dao;

import com.jangbogo.mall.domain.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class UserDaoImpl implements UserDao{

    @Autowired
    SqlSession session;

    private static String nameSpace = "com.jangbogo.mall.dao.UserMapper.";

    @Override
    public int deleteUser (int idx, String email) throws Exception {
        Map map = new HashMap();
        map.put("idx", idx);
        map.put("email", email);
        return session.update(nameSpace + "deleteUser", map);
    }

    @Override
    public String selUserEmail (String nick_nm, String pwd) throws Exception {
        Map map = new HashMap();
        map.put("nick_nm", nick_nm);
        map.put("pwd", pwd);
        return session.selectOne(nameSpace + "selUserEmail", map);
    }

    @Override
    public User selUserByEmail (String nick_nm, String email) throws Exception {
        Map map = new HashMap();
        map.put("nick_nm", nick_nm);
        map.put("email", email);
        return session.selectOne(nameSpace + "selUserByEmail", map);
    }

    @Override
    public User selectUser (int idx) throws Exception {
        return session.selectOne(nameSpace + "selectUser", idx);
    }

    @Override
    public int updatePwd (String pwd, String nick_nm, String email) throws Exception {
        Map map = new HashMap();
        map.put("pwd", pwd);
        map.put("nick_nm", nick_nm);
        map.put("email", email);
        return session.update(nameSpace + "updatePwd", map);
    }

    @Override
    public User chkDuplicateEmail (String email) throws Exception {
        return session.selectOne(nameSpace + "chkDuplicateEmail", email);
    }

    @Override
    public int insertSocialUser (String email, String nick_nm, int login_type) throws Exception {
        Map map = new HashMap();
        map.put("email", email);
        map.put("nick_nm", nick_nm);
        map.put("login_tp_cd", login_type);
        return session.insert(nameSpace + "insertSocialUser", map);
    }


}

