package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.IUserDao;
import edu.ysu.ling.pojo.User;
import edu.ysu.ling.service.IUserService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.UUID;

/**
 * Created by 10047 on 2017/4/23.
 */
@Service
public class UserServiceImpl implements IUserService {

    @Resource
    private SqlSessionFactory sqlSessionFactory;

    private IUserDao userDao;

    @Override
    public User findUserByUserId(String userId) {
        SqlSession session = sqlSessionFactory.openSession();
        userDao = session.getMapper(IUserDao.class);
        User user = userDao.selectUserByUserId(userId);
        return user;
    }

    @Override
    public User addUser(User user) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            UUID uuid  =  UUID.randomUUID();
            user.setUserId(uuid.toString());
            userDao = session.getMapper(IUserDao.class);
            userDao.insertUser(user);
        }catch (Exception e){
            e.printStackTrace();

        }finally {
            session.close();
            return user;
        }
    }

    @Override
    public boolean loginVerify(User user) {
        SqlSession session = sqlSessionFactory.openSession();
        userDao = session.getMapper(IUserDao.class);
        try {
            User user1 = userDao.selectUserByAccount(user.getAccount());
            if (user.getPassword().equals(user1.getPassword())) {
                return true;
            }
        } catch (Exception e) {
            return false;
        }
        return false;
    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
