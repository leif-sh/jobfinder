package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.ICompanyDao;
import edu.ysu.ling.dao.IJobLabelsDao;
import edu.ysu.ling.dao.IRequirementinfoDao;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.service.IRequirementinfoService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 10047 on 2017/5/1.
 */

public class RequirementinfoServiceImpl implements IRequirementinfoService {

    @Resource
    private SqlSessionFactory sqlSessionFactory;

    private IRequirementinfoDao requirementinfoDao;
    private ICompanyDao companyDao;
    private IJobLabelsDao jobLabelsDao;

    @Override
    public List<Requirementinfo> getJobs(Map params) {
        List<Requirementinfo> requirementinfoList = null;
        SqlSession session = sqlSessionFactory.openSession();
        try {
            requirementinfoDao = session.getMapper(IRequirementinfoDao.class);

            if (!params.isEmpty()) {
                requirementinfoList = requirementinfoDao.selectRequirementinfoInSearch(params);
            }else {
                requirementinfoList = requirementinfoDao.selectRequirementinfos(params);
            }
            if (requirementinfoList.size() > 0) {
                List<String> companyIdList = new ArrayList<>();
                List<String> jobMessageIdList = new ArrayList<>();
                for (int n = 0; n < requirementinfoList.size(); n++) {
                    companyIdList.add(requirementinfoList.get(n).getCompanyId());
                    jobMessageIdList.add(requirementinfoList.get(n).getJobMessageId());
                }
                companyDao = session.getMapper(ICompanyDao.class);
                //System.out.println(companyIdList.toString());

                List<Company> companyList = companyDao.batchSelectCompanyById(companyIdList);

                Map<String, Object> map = new HashMap<>();
                for (int n = 0; n < companyList.size(); n++) {

                    companyList.get(n).setCompanyScale(companyList.get(n).getCompanyScale().replace("规模", "").trim());
                    companyList.get(n).setCompanyProperty(companyList.get(n).getCompanyProperty().replace("发展阶段", "").trim());
                    companyList.get(n).setCompanyName(companyList.get(n).getCompanyName().replace("拉勾未认证企业", "").trim());
                    companyList.get(n).setCompanyWebsite(companyList.get(n).getCompanyWebsite().replace("公司主页", "").trim());
                    map.put(companyList.get(n).getCompanyId(), companyList.get(n));
                }

                //System.out.println(companyList.size());
                jobLabelsDao = session.getMapper(IJobLabelsDao.class);
                for (int n = 0; n < requirementinfoList.size(); n++) {
                    requirementinfoList.get(n).setCompany((Company) map.get(requirementinfoList.get(n).getCompanyId()));
                    requirementinfoList.get(n).setJoblabelsList(jobLabelsDao.selectJobLabelsByJobMessageId(jobMessageIdList.get(n)));
                }
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
            requirementinfo.setJobAddress(requirementinfo.getJobAddress().replace("查看地图","").trim());
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
