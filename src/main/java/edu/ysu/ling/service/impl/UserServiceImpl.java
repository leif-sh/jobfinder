package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.IUserDao;
import edu.ysu.ling.pojo.User;
import edu.ysu.ling.service.IUserService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by 10047 on 2017/4/23.
 */
@Service
public class UserServiceImpl implements IUserService {

    @Resource
    private SqlSessionFactory sessionFactory;

    private IUserDao userDao;

    @Override
    public User findUserByUserId(String userId) {
        SqlSession session = sessionFactory.openSession();
        userDao = session.getMapper(IUserDao.class);
        User user = userDao.selectUserByUserId(userId);
        return user;
    }

    public SqlSessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SqlSessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
