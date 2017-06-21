package edu.ysu.ling.dao;

import edu.ysu.ling.pojo.Businessuser;

import java.util.List;
import java.util.Map;

/**
 * Created by 10047 on 2017/5/21.
 */

public interface IBusinessUserDao {
    /**
     * 通过id查找用户
     * @param businessUserId
     * @return
     */
    public Businessuser selectBusinessUserById(String businessUserId);

    /**
     * 通过账号查找用户
     * @param businessMailAddress
     * @return
     */
    public Businessuser selectBusinessUserByEmail(String businessMailAddress);

    /**
     * 添加企业用户
     * @param businessuser
     */
    public void insertBusinessUser(Businessuser businessuser);

    /**
     * 删除用户
     * @param businessuser
     */
    public void deleteBusinessUser(Businessuser businessuser);

    /**
     * 修改用户资料
     * @param businessuser
     */
    public void updateBusinessUser(Businessuser businessuser);

    /**
     * 获取用户列表
     * @param params
     * @return
     */
    public List<Businessuser> getBusinessUsers(Map params);
}
