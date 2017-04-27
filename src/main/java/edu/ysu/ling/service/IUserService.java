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
    public User findUserByUserId(String userId);
    public User addUser(User user);
}
