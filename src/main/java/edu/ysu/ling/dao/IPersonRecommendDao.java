package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/6/13.
 */

import edu.ysu.ling.pojo.Personrecommend;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/6/13
 * Time: 11:28
 **/
public interface IPersonRecommendDao {
    public abstract List<Personrecommend> selectPersonRecommendByBusinessUserId(String businessUserId);

    public abstract void insertPersonRecommend(Personrecommend personrecommend);

    public abstract Personrecommend selectPersonRecommendById(String personRecommendId);
}
