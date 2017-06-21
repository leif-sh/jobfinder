package edu.ysu.ling.service;

import edu.ysu.ling.controller.CollectionController;
import edu.ysu.ling.pojo.Collectionjob;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.List;

/**
 * Created by 10047 on 2017/5/21.
 */

public interface ICollectionService {

    /**
     * 获取收藏列表
     * @param userId
     * @return
     */
    public abstract List<Collectionjob> getCollections(String userId);

    /**
     * 添加收藏
     * @param collectionjob
     * @return
     */
    public abstract boolean addCollection(Collectionjob collectionjob);

    /**
     * 取消收藏
     * @param collectionjob
     * @return
     */
    public abstract boolean cancelCollection(Collectionjob collectionjob);
}
