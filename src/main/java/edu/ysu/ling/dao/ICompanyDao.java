package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/4/30.
 */

import edu.ysu.ling.pojo.Company;

import java.util.List;

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

    /**
     * 批量通过id查找company
     * @param companyIdList
     * @return
     */
    public abstract List<Company> batchSelectCompanyById(List<String> companyIdList);

    /**
     * 查询Id在相应的集合中的数量
     * @param companyIdList
     * @return
     */
    public abstract int selectNumInList(List<String> companyIdList);
}
