package edu.ysu.ling.util;

import edu.ysu.ling.dao.ICompanyDao;
import edu.ysu.ling.dao.IJobLabelsDao;
import edu.ysu.ling.dao.IRequirementinfoDao;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Joblabels;
import edu.ysu.ling.pojo.Requirementinfo;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Reader;
import java.util.List;
import java.util.UUID;

/**
 * Created by ling on 2017/5/11.
 */
public class DaoUtil {
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

    public static void catchJobAndCompany(Requirementinfo requirementinfo, Company company , List<String> joblabelsList){
        SqlSession session = sqlSessionFactory.openSession();
        try {
            ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
            Company companyinmysql = null;
            companyinmysql = companyDao.selectCompanyByName(company);
            if (companyinmysql != null) {
                requirementinfo.setCompanyId(companyinmysql.getCompanyId());
                requirementinfo.setSourceCompanyName(companyinmysql.getCompanyName());
            } else {
                company.setCompanyId(UUID.randomUUID().toString());
                companyDao.catchCompanyinfos(company);
                requirementinfo.setSourceCompanyName(company.getCompanyName());
                requirementinfo.setCompanyId(company.getCompanyId());
            }

            IRequirementinfoDao requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
            requirementinfoDao.catchRequirementinfo(requirementinfo);

            IJobLabelsDao jobLabelsDao = session.getMapper(IJobLabelsDao.class);
            for (String joblabel:joblabelsList) {
                Joblabels joblabels = new Joblabels();
                joblabels.setJobMessageId(requirementinfo.getJobMessageId());
                joblabels.setLabels(joblabel);
                joblabels.setLabelId(UUID.randomUUID().toString());
                jobLabelsDao.catchJobLabels(joblabels);
            }
            session.commit();
            logger.info("添加一条数据成功！！！");
        } catch (Exception e) {
            logger.error("插入数据失败");
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
}
