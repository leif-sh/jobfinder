package edu.ysu.ling.dao;

import edu.ysu.ling.pojo.Requirementinfo;

import java.util.List;
import java.util.Map;

/**
 * Created by 10047 on 2017/4/23.
 */

public interface IRequirementinfoDao {

    //获取招聘信息列表
    public abstract List<Requirementinfo> selectRequirementinfos(Map params);

    //通过编号获取招聘信息
    public abstract Requirementinfo selectRequirementinfoById(String id);

    //通过编号删除招聘信息
    public abstract boolean deleteRequirementinfoById(Map params);

    //添加招聘信息
    public abstract void insertRequirementinfo(Requirementinfo requirementinfo);

    /**
     * 收集一条招聘信息
     * @param requirementinfo
     */
    public abstract void catchRequirementinfo(Requirementinfo requirementinfo);

    //修改招聘信息
    public abstract boolean updateRequirementinfo(Requirementinfo requirementinfo);

}
