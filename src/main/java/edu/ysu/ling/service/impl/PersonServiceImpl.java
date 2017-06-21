package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.IDreamPersonDao;
import edu.ysu.ling.dao.IPersonLibraryDao;
import edu.ysu.ling.dao.IPersonRecommendDao;
import edu.ysu.ling.pojo.Dreamperson;
import edu.ysu.ling.pojo.Personlibrary;
import edu.ysu.ling.pojo.Personrecommend;
import edu.ysu.ling.service.IPersonService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

/**
 * Created by 10047 on 2017/6/13.
 */

public class PersonServiceImpl implements IPersonService {

    @Resource
    private SqlSessionFactory sqlSessionFactory;
    private IDreamPersonDao dreamPersonDao;
    private IPersonRecommendDao personRecommendDao;
    private IPersonLibraryDao personLibraryDao;

    @Override
    public Dreamperson getDreamPerson(String businessUserId) {
        SqlSession session = sqlSessionFactory.openSession();
        Dreamperson dreamperson = null;
        try {
            dreamPersonDao = session.getMapper(IDreamPersonDao.class);
            dreamperson = dreamPersonDao.selectDreamPersonByBusinessUserId(businessUserId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return dreamperson;
    }

    @Override
    public Dreamperson changeDreamPerson(Dreamperson dreamperson) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            dreamPersonDao = session.getMapper(IDreamPersonDao.class);
            Dreamperson dreamperson1 = dreamPersonDao.selectDreamPersonByBusinessUserId(dreamperson.getBusinessUserId());
            if (dreamperson1 == null){
                dreamperson.setDreamPersonId(UUID.randomUUID().toString());
                dreamPersonDao.insertDreamPerson(dreamperson);
            }else {
                dreamPersonDao.updataDreamPerson(dreamperson);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return dreamperson;
    }

    @Override
    public List<Personrecommend> findPersonRecommendByBusinessId(String businessUserId) {
        SqlSession session = sqlSessionFactory.openSession();
        List<Personrecommend> personrecommendList = null;
        try {
            personRecommendDao = session.getMapper(IPersonRecommendDao.class);
            personrecommendList = personRecommendDao.selectPersonRecommendByBusinessUserId(businessUserId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return personrecommendList;
    }

    @Override
    public Personrecommend findPersonRecommendById(String recommendId) {
        SqlSession session = sqlSessionFactory.openSession();
        Personrecommend personrecommend = null;
        try {
            personRecommendDao = session.getMapper(IPersonRecommendDao.class);
            personrecommend = personRecommendDao.selectPersonRecommendById(recommendId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return personrecommend;
    }

    @Override
    public boolean addPersonRecommend(Personrecommend personrecommend) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            personRecommendDao = session.getMapper(IPersonRecommendDao.class);
            personRecommendDao.insertPersonRecommend(personrecommend);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }
    }

    @Override
    public boolean addPersonLibrary(Personlibrary personlibrary) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            personLibraryDao = session.getMapper(IPersonLibraryDao.class);
            personLibraryDao.insertPersonLibrary(personlibrary);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }
    }

    @Override
    public List<Personlibrary> findPersonLibraryByBusinessUserId(String businessUserId) {
        SqlSession session = sqlSessionFactory.openSession();
        List<Personlibrary> personlibraryList = null;
        try {
            personLibraryDao = session.getMapper(IPersonLibraryDao.class);
            personlibraryList = personLibraryDao.selectPersonLibraryByBusinessUserId(businessUserId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return personlibraryList;
    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
