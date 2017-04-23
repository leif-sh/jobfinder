package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/4/23.
 */

import edu.ysu.ling.pojo.User;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/4/23
 * Time: 11:10
 **/
public interface IUserDao {

    public User selectUserByUserId(String userId);
}
