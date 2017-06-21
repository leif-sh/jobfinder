package edu.ysu.ling.dao;

import edu.ysu.ling.pojo.Requirementinfo;

import java.util.List;
import java.util.Map;

/**
 * Created by 10047 on 2017/4/23.
 */

public interface IRequirementinfoDao {

    /**
     * 获取招聘信息列表
     * @param params
     * @return
     */
    public abstract List<Requirementinfo> selectRequirementinfos(Map params);

    /**
     * 通过编号获取招聘信息
     * @param id
     * @return
     */
    public abstract Requirementinfo selectRequirementinfoById(String id);

    /**
     * 通过编号删除招聘信息
     * @param requirementinfo
     * @return
     */
    public abstract void deleteRequirementinfo(Requirementinfo requirementinfo);

    /**
     * 添加招聘信息
     * @param requirementinfo
     */
    public abstract void insertRequirementinfo(Requirementinfo requirementinfo);

    /**
     * 收集一条招聘信息
     * @param requirementinfo
     */
    public abstract void catchRequirementinfo(Requirementinfo requirementinfo);

    /**
     * 修改招聘信息
     * @param requirementinfo
     * @return
     */
    public abstract void updateRequirementinfo(Requirementinfo requirementinfo);

    /**
     * 搜索职位信息
     * @return
     */
    public abstract List<Requirementinfo> selectRequirementinfoInSearch(Map params);

    /**
     * 查询需要进行推送的职位
     * @param params
     * @return
     */
    public abstract List<Requirementinfo> selectJobForPush(Map params);

    /**
     * 查询企业用户发布的职位
     * @param businessUserId
     * @return
     */
    public abstract List<Requirementinfo> selectRequirementinfoByBusinessUser(String businessUserId);
}
