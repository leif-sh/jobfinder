package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.IResumeDao;
import edu.ysu.ling.pojo.*;
import edu.ysu.ling.service.IResumeService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.omg.CORBA.IRObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import javax.batch.runtime.JobExecution;
import java.util.List;

/**
 * Created by 10047 on 2017/6/6.
 */

public class ResumeServiceImpl implements IResumeService {
    private Logger logger = LoggerFactory.getLogger(ResumeServiceImpl.class);
    @Resource
    private SqlSessionFactory sqlSessionFactory;
    private IResumeDao resumeDao;

    @Override
    public Resume getResumes(String userId) {
        SqlSession session = sqlSessionFactory.openSession();
        Resume resume = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resume = resumeDao.selectResumeByUserId(userId);

            List<Educationexperience> educationexperienceList = resumeDao.selectEducationExperienceByResumeId(resume.getResumeId());
            List<Jobexperience> jobexperienceList = resumeDao.selectJobExperienceByResumeId(resume.getResumeId());
            List<Projectexperience> projectexperienceList = resumeDao.selectProjectExperienceByResumeId(resume.getResumeId());
            Dreamjob dreamjob = resumeDao.selectDreamJobByResumeId(resume.getResumeId());

            resume.setEducationexperienceList(educationexperienceList);
            resume.setJobexperienceList(jobexperienceList);
            resume.setProjectexperienceList(projectexperienceList);
            resume.setDreamjob(dreamjob);

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }

        return resume;
    }

    @Override
    public Resume changeResume(Resume resume) {
        SqlSession session = sqlSessionFactory.openSession();
        Resume resume1 = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.updateResume(resume);
            resume1 = resumeDao.selectResumeByUserId(resume.getUserId());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return resume1;
    }

    @Override
    public boolean addResume(Resume resume) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.insertResume(resume);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }
    }

    @Override
    public Dreamjob getDreamJobs(int resumeId) {
        SqlSession session = sqlSessionFactory.openSession();
        Dreamjob dreamjob = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            dreamjob = resumeDao.selectDreamJobByResumeId(resumeId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return dreamjob;
    }

    @Override
    public Dreamjob changeDreamJob(Dreamjob dreamjob) {
        SqlSession session = sqlSessionFactory.openSession();
        Dreamjob dreamjob1 = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.updateDreamJob(dreamjob);
            dreamjob1 = resumeDao.selectDreamJobByResumeId(dreamjob.getResumeId());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return dreamjob1;
    }

    @Override
    public boolean addDreamJob(Dreamjob dreamjob) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.insertDreamJob(dreamjob);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }
    }

    @Override
    public List<Educationexperience> getEducationExperiences(int resumeId) {
        SqlSession session = sqlSessionFactory.openSession();
        List<Educationexperience> educationexperienceList = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            educationexperienceList = resumeDao.selectEducationExperienceByResumeId(resumeId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return educationexperienceList;
    }

    @Override
    public Educationexperience changeEducationExperience(Educationexperience educationexperience) {
        SqlSession session = sqlSessionFactory.openSession();
        Educationexperience educationexperience1 = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.updateEducationExperience(educationexperience);
            educationexperience1 = resumeDao.selectEducationById(educationexperience.getEducationExperienceId());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return educationexperience1;
    }

    @Override
    public boolean addEducationExperience(Educationexperience educationexperience) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.insertEducationExperience(educationexperience);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }
    }

    @Override
    public List<Jobexperience> getJobExperiences(int resumeId) {
        SqlSession session = sqlSessionFactory.openSession();
        List<Jobexperience> jobexperienceList = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            jobexperienceList = resumeDao.selectJobExperienceByResumeId(resumeId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return jobexperienceList;
    }

    @Override
    public Jobexperience changeJobExperience(Jobexperience jobexperience) {
        SqlSession session = sqlSessionFactory.openSession();
        Jobexperience jobexperience1 = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.updateJobExperience(jobexperience);
            jobexperience1 = resumeDao.selectJobExperienceById(jobexperience.getJobExperienceId());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return jobexperience1;
    }

    @Override
    public boolean addJobExperience(Jobexperience jobexperience) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.insertJobExperience(jobexperience);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }

    }

    @Override
    public List<Projectexperience> getProjectExperience(int resumeId) {
        SqlSession session = sqlSessionFactory.openSession();
        List<Projectexperience> projectexperienceList = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            projectexperienceList = resumeDao.selectProjectExperienceByResumeId(resumeId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return projectexperienceList;
    }

    @Override
    public Projectexperience changeProjectExperience(Projectexperience projectexperience) {
        SqlSession session = sqlSessionFactory.openSession();
        Projectexperience projectexperience1 = null;
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.updateProjectExperience(projectexperience);
            projectexperience1 = resumeDao.selectProjectExperienceById(projectexperience.getProjectExperienceId());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return projectexperience1;
    }

    @Override
    public boolean addProjectExperience(Projectexperience projectexperience) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            resumeDao = session.getMapper(IResumeDao.class);
            resumeDao.insertProjectExperience(projectexperience);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            session.close();
        }

    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
