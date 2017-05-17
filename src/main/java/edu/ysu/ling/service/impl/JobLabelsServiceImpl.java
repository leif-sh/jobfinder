package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.IJobLabelsDao;
import edu.ysu.ling.service.IJobLabelsService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 10047 on 2017/5/1.
 */

public class JobLabelsServiceImpl implements IJobLabelsService {

    @Resource
    private SqlSessionFactory sqlSessionFactory;
    private IJobLabelsDao jobLabelsDao;

    @Override
    public List<String> findLabelsById(String id) {
        List <String> list = null;
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            jobLabelsDao = sqlSession.getMapper(IJobLabelsDao.class);
            list = jobLabelsDao.selectLabelsByJobMessageId(id);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return list;
    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
