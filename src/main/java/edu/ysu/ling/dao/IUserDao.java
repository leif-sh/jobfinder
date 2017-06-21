package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/4/23.
 */

import edu.ysu.ling.pojo.User;
import java.util.List;
import java.util.Map;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/4/23
 * Time: 11:10
 **/
public interface IUserDao {
    /**
     * 通过Id查询用户
     * @param userId
     * @return
     */
    public User selectUserByUserId(String userId);

    /**
     *通过账号查找用户
     * @param account
     * @return
     */
    public abstract User selectUserByAccount(String account);
    /**
     * 批量获取用户
     * @param params
     * @return
     */
    public List<User> getUsers(Map params);
    /**
     * 增加用户
     * @param user
     */
    public void insertUser(User user);
    /**
     * 修改用户信息
     * @param user
     * @return
     */
    public boolean updateUser(User user);
    /**
     * 删除用户
     * @param user
     * @return
     */
    public boolean deleteUser(User user);

}
