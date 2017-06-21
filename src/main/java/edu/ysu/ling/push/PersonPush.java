package edu.ysu.ling.push;

import edu.ysu.ling.dao.*;
import edu.ysu.ling.pojo.*;
import edu.ysu.ling.util.DaoUtil;
import edu.ysu.ling.util.SendEmail;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.omg.PortableServer.LIFESPAN_POLICY_ID;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Reader;
import java.util.*;

/**
 * Created by 10047 on 2017/6/8.
 */

public class PersonPush {
    private static Logger logger = LoggerFactory.getLogger(DaoUtil.class);
    private static SqlSessionFactory sqlSessionFactory;
    private static Reader reader;
    static{
        try{
            reader  = Resources.getResourceAsReader("sqlMapConfig.xml");
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public static void pushPerson(){
        SqlSession session = sqlSessionFactory.openSession();
        IDreamPersonDao dreamPersonDao = session.getMapper(IDreamPersonDao.class);
        IResumeDao resumeDao = session.getMapper(IResumeDao.class);
        IPersonRecommendDao personRecommendDao = session.getMapper(IPersonRecommendDao.class);
        IBusinessUserDao businessUserDao = session.getMapper(IBusinessUserDao.class);
        Map<String, Object> params = new HashMap<String,Object>();

        List<Dreamperson> dreampersonList = dreamPersonDao.selectDreamPersons(params);
        for (Dreamperson dreamperson : dreampersonList) {
            Businessuser businessuser = businessUserDao.selectBusinessUserById(dreamperson.getBusinessUserId());
            Map<String, Object> params1 = new HashMap<String,Object>();
            params1.put("dreamPersonType", dreamperson.getDreamPersonType());
            params1.put("dreamPersonEducation", dreamperson.getDreamPersonEducation());
            params1.put("dreamPersonWorkExperience", dreamperson.getDreamPersonWorkExperience());
            params1.put("dreamPersonSalaryTop", dreamperson.getDreamPersonSalaryTop());

            List<Resume> resumeList = resumeDao.selectResumeForPush(params1);

            for (Resume resume : resumeList) {
                Personrecommend personrecommend = new Personrecommend();
                personrecommend.setBusinessUserId(businessuser.getBusinessUserId());
                personrecommend.setRecommendId(UUID.randomUUID().toString());
                personrecommend.setUserId(resume.getUserId());
                personrecommend.setRecommendDate(new Date());
                personRecommendDao.insertPersonRecommend(personrecommend);
            }
            session.commit();

            Map<String, Object> params2 = new HashMap<String, Object>();
            params2.put("resumeList", resumeList);
            params2.put("businessuser", businessuser);

            SendEmail.sendPersonMessage(businessuser.getBusinessMailAddress(), params2);
        }
    }

    public static void main(String[] args){
        pushPerson();
    }
}
