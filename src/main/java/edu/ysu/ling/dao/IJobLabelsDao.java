package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/4/29.
 */

import edu.ysu.ling.pojo.Joblabels;

import java.util.List;
import java.util.Map;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/4/29
 * Time: 17:19
 **/
public interface IJobLabelsDao {
    /**
     * 给职位添加标签
     * @param joblabels
     */
    public abstract void insertJobLabels(Joblabels joblabels);

    /**
     * 收集职位的标签
     * @param joblabels
     */
    public abstract void catchJobLabels(Joblabels joblabels);

    /**
     * 通过标签查找相应的工作ID
     * @param params
     * @return
     */
    public abstract List<String> selectJobIdByJobLabels(Map params);

    /**
     * 通过职位id查找标签
     * @return
     */
    public abstract List<String> selectJobLabelsByJobMessageId(String jobMessageId);
}
