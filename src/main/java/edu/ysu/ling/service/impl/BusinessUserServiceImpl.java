package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.IBusinessUserDao;
import edu.ysu.ling.pojo.Businessuser;
import edu.ysu.ling.service.IBusinessUserService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;

/**
 * Created by 10047 on 2017/6/11.
 */

public class BusinessUserServiceImpl implements IBusinessUserService{

    private static Logger logger = LoggerFactory.getLogger(BusinessUserServiceImpl.class);
    @Resource
    private SqlSessionFactory sqlSessionFactory;
    private IBusinessUserDao businessUserDao;

    @Override
    public Businessuser findUserById(String businessUserId) {
        SqlSession session = sqlSessionFactory.openSession();
        Businessuser businessuser = null;
        try {
            businessUserDao = session.getMapper(IBusinessUserDao.class);
            businessuser = businessUserDao.selectBusinessUserById(businessUserId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return businessuser;
    }

    @Override
    public Businessuser findUserByEmailAddress(String businessMailAddress) {
        SqlSession session = sqlSessionFactory.openSession();
        Businessuser businessuser = null;
        try {
            businessUserDao = session.getMapper(IBusinessUserDao.class);
            businessuser = businessUserDao.selectBusinessUserByEmail(businessMailAddress);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return businessuser;
    }

    @Override
    public boolean loginVerify(Businessuser businessuser) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            businessUserDao = session.getMapper(IBusinessUserDao.class);
            Businessuser businessuser1 = businessUserDao.selectBusinessUserByEmail(businessuser.getBusinessMailAddress());
            if (businessuser1 == null){
                return false;
            }else {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }
    }

    @Override
    public Businessuser addUser(Businessuser businessuser) {
        SqlSession session = sqlSessionFactory.openSession();
        Businessuser businessuser1 = null;
        try {
            businessUserDao = session.getMapper(IBusinessUserDao.class);
            businessUserDao.insertBusinessUser(businessuser);
            businessuser1 = businessUserDao.selectBusinessUserById(businessuser.getBusinessUserId());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return businessuser1;
    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
