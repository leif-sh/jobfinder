package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.IBusinessUserDao;
import edu.ysu.ling.dao.ICompanyDao;
import edu.ysu.ling.dao.IJobLabelsDao;
import edu.ysu.ling.dao.IRequirementinfoDao;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.pojo.Requirementinfo;
import edu.ysu.ling.service.IRequirementinfoService;
import org.apache.commons.lang3.StringUtils;
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
    private IBusinessUserDao businessUserDao;

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
                    //companyList.get(n).setCompanyWebsite(companyList.get(n).getCompanyWebsite().replace("公司主页", "").trim());
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
            if (StringUtils.isNotBlank(requirementinfo.getBusinessUserId())){
                businessUserDao = session.getMapper(IBusinessUserDao.class);
                requirementinfo.setBusinessuser(businessUserDao.selectBusinessUserById(requirementinfo.getBusinessUserId()));
            }
            if (StringUtils.isNotBlank(requirementinfo.getJobAddress())) {
                requirementinfo.setJobAddress(requirementinfo.getJobAddress().replace("查看地图","").trim());
            }
            if (StringUtils.isNotBlank(requirementinfo.getSourceCompanyName())) {
                requirementinfo.setSourceCompanyName(requirementinfo.getSourceCompanyName().replace("拉勾未认证企业","").trim());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return requirementinfo;
    }

    @Override
    public void addJob(Requirementinfo requirementinfo) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
            requirementinfoDao.insertRequirementinfo(requirementinfo);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
    }

    @Override
    public List<Requirementinfo> getRequirementinfoByBusinessUser(String businessUserId) {
        SqlSession session = sqlSessionFactory.openSession();
        List<Requirementinfo> requirementinfoList = null;
        try {
            requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
            requirementinfoList = requirementinfoDao.selectRequirementinfoByBusinessUser(businessUserId);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return requirementinfoList;
    }

    @Override
    public Requirementinfo changePublishRequirement(Requirementinfo requirementinfo) {
        SqlSession session = sqlSessionFactory.openSession();
        Requirementinfo requirementinfo1 = null;
        try {
            requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
            requirementinfoDao.updateRequirementinfo(requirementinfo);
            requirementinfo1 = requirementinfoDao.selectRequirementinfoById(requirementinfo.getJobMessageId());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            session.close();
        }
        return requirementinfo1;
    }

    @Override
    public void closePublishRequirement(Requirementinfo requirementinfo) {
        SqlSession session = sqlSessionFactory.openSession();
        try {
            requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
            requirementinfoDao.deleteRequirementinfo(requirementinfo);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
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
