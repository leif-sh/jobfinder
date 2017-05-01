package edu.ysu.ling.service;/**
 * Created by 10047 on 2017/4/23.
 */

import edu.ysu.ling.pojo.User;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/4/23
 * Time: 11:18
 **/
public interface IUserService {
    /**
     * 通过用户编号查找用户信息
     * @param userId
     * @return
     */
    public abstract User findUserByUserId(String userId);

    /**
     * 添加用户
     * @param user
     * @return
     */
    public abstract User addUser(User user);

    /**
     * 登录验证
     * @param user
     * @return
     */
    public abstract boolean loginVerify(User user);

}
