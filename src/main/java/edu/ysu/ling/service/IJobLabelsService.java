package edu.ysu.ling.service;/**
 * Created by 10047 on 2017/5/1.
 */

import edu.ysu.ling.pojo.Joblabels;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/5/1
 * Time: 21:59
 **/
public interface IJobLabelsService {
    /**
     * 通过职位编号查找标签
     * @param id
     * @return
     */
    public abstract List<String> findLabelsById(String id);
}
