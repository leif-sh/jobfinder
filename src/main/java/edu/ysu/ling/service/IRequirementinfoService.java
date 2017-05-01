package edu.ysu.ling.service;/**
 * Created by 10047 on 2017/5/1.
 */

import edu.ysu.ling.pojo.Requirementinfo;

import java.util.List;
import java.util.Map;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/5/1
 * Time: 9:26
 **/
public interface IRequirementinfoService {
    /**
     * 获取职位列表
     * @param params
     * @return
     */
    public abstract List<Requirementinfo> getJobs(Map params);

    public abstract Requirementinfo getJobById(String jobMessageId);

    public abstract void addJob(Requirementinfo requirementinfo);
}
