package edu.ysu.ling.push;

import edu.ysu.ling.dao.IRequirementinfoDao;
import edu.ysu.ling.dao.IResumeDao;
import edu.ysu.ling.dao.IUserDao;
import edu.ysu.ling.pojo.Dreamjob;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.pojo.User;
import edu.ysu.ling.util.DaoUtil;
import edu.ysu.ling.util.SendEmail;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 10047 on 2017/6/8.
 */

public class JobPush {
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
    public static void pushJob(){
        SqlSession session = sqlSessionFactory.openSession();
        IResumeDao resumeDao = session.getMapper(IResumeDao.class);
        IUserDao userDao = session.getMapper(IUserDao.class);
        IRequirementinfoDao requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
        Map<String, Object> params = new HashMap<String,Object>();
        params.put("jobPush", "1");
        List<Dreamjob> dreamjobList = resumeDao.selectDreamJobs(params);
        for (Dreamjob dreamjob : dreamjobList) {
            String userId = dreamjob.getUserId();
            User user = userDao.selectUserByUserId(userId);
            Map<String, Object> params1 = new HashMap<String, Object>();
            params1.put("dreamJobName", dreamjob.getDreamJobName());
            params1.put("dreamSalaryBottom", dreamjob.getDreamSalaryBottom());
            params1.put("dreamSalaryTop", dreamjob.getDreamSalaryTop());
            params1.put("dreamJobCity", dreamjob.getDreamJobCity());
            List<Requirementinfo> requirementinfoList = requirementinfoDao.selectJobForPush(params1);

            //logger.info("-------"+requirementinfoList.get(0).toString());

            Map<String, Object> params2 = new HashMap<String, Object>();
            params2.put("requirementinfoList", requirementinfoList);
            params2.put("user", user);
            params2.put("dreamJob", dreamjob);
            SendEmail.sendJobMessage(user.getMailAddress(), params2);
        }
    }
    public static void main(String[] args){
        pushJob();
    }
}
