package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/4/30.
 */

import edu.ysu.ling.pojo.Company;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/4/30
 * Time: 22:48
 **/
public interface ICompanyDao {
    /**
     * 抓取公司信息
     * @param company
     */
    public abstract void catchCompanyinfos(Company company);

    /**
     * 通过名称查询公司
     * @param company
     * @return
     */
    public abstract Company selectCompanyByName(Company company);

    /**
     * 通过Id查询公司
     * @param companyId
     * @return
     */
    public abstract Company selectCompanyById(String companyId);
}
