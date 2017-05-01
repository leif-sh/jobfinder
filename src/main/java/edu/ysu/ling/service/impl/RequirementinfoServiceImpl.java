package edu.ysu.ling.service.impl;

import com.sun.org.apache.regexp.internal.RE;
import edu.ysu.ling.dao.IJobLabelsDao;
import edu.ysu.ling.dao.IRequirementinfoDao;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.service.IRequirementinfoService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by 10047 on 2017/5/1.
 */

public class RequirementinfoServiceImpl implements IRequirementinfoService {

    @Resource
    private SqlSessionFactory sqlSessionFactory;

    private IRequirementinfoDao requirementinfoDao;
    private IJobLabelsDao jobLabelsDao;

    @Override
    public List<Requirementinfo> getJobs(Map params) {
        List<Requirementinfo> requirementinfoList = null;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            requirementinfoDao = session.getMapper(IRequirementinfoDao.class);

            if (!params.isEmpty()) {
                List list = jobLabelsDao.selectJobIdByJobLabels(params);
            }else {
                requirementinfoList = requirementinfoDao.selectRequirementinfos(params);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return requirementinfoList;
    }

    @Override
    public Requirementinfo getJobById(String jobMessageId) {
        Requirementinfo requirementinfo = null;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
            requirementinfo = requirementinfoDao.selectRequirementinfoById(jobMessageId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return requirementinfo;
    }

    @Override
    public void addJob(Requirementinfo requirementinfo) {

    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
