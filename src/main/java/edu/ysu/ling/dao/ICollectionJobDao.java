package edu.ysu.ling.dao;

import edu.ysu.ling.pojo.Collectionjob;

import java.util.List;

/**
 * Created by ling on 2017/5/16.
 */
public interface ICollectionJobDao {
    /**
     * 收藏职位
     * @param collectionjob
     * @return
     */
    public abstract boolean insertCollectionJob(Collectionjob collectionjob);

    /**
     * 取消收藏
     * @param collectionjob
     * @return
     */
    public abstract boolean deleteCollectionJob(Collectionjob collectionjob);

    /**
     * 查看收藏
     * @param userId
     * @return
     */
    public abstract List<Collectionjob> selectCollectionJob(String userId);
}
