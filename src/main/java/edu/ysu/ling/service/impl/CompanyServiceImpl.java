package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.ICompanyDao;
import edu.ysu.ling.pojo.Company;
import edu.ysu.ling.service.ICompanyService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.annotation.Resource;

/**
 * Created by 10047 on 2017/5/1.
 */

public class CompanyServiceImpl implements ICompanyService {

    @Resource
    private SqlSessionFactory sqlSessionFactory;
    private ICompanyDao companyDao;

    @Override
    public Company findCompanyById(String companyId) {

        Company company = null;
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            companyDao = sqlSession.getMapper(ICompanyDao.class);
            company = companyDao.selectCompanyById(companyId);
            company.setCompanyWebsite(company.getCompanyWebsite().replace("公司主页","").trim());
            company.setCompanyName(company.getCompanyName().replace("拉勾未认证企业","").trim());
            company.setCompanyScale(company.getCompanyScale().replace("规模","").trim());
            company.setCompanyProperty(company.getCompanyProperty().replace("发展阶段","").trim());
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return company;
    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
