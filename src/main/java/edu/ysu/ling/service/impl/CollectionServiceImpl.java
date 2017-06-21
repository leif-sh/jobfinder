package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.ICollectionJobDao;
import edu.ysu.ling.pojo.Collectionjob;
import edu.ysu.ling.service.ICollectionService;
import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.List;

/**
 * Created by 10047 on 2017/6/4.
 */

public class CollectionServiceImpl implements ICollectionService {

    private static Logger logger = LoggerFactory.getLogger(CompanyServiceImpl.class);
    @Resource
    private SqlSessionFactory sqlSessionFactory;
    private ICollectionJobDao collectionJobDao;

    @Override
    public List<Collectionjob> getCollections(String userId) {
        SqlSession session = sqlSessionFactory.openSession();
        List<Collectionjob> collectionList = null;
        try {
            collectionJobDao = session.getMapper(ICollectionJobDao.class);
            collectionList = collectionJobDao.selectCollectionJob(userId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return collectionList;
    }

    @Override
    public boolean addCollection(Collectionjob collectionjob) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            collectionJobDao = sqlSession.getMapper(ICollectionJobDao.class);
            collectionJobDao.insertCollectionJob(collectionjob);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            sqlSession.close();
        }
    }

    @Override
    public boolean cancelCollection(Collectionjob collectionjob) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            collectionJobDao = sqlSession.getMapper(ICollectionJobDao.class);
            collectionJobDao.deleteCollectionJob(collectionjob);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            sqlSession.close();
        }

    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
