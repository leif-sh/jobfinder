package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/4/3.
 */

import edu.ysu.ling.pojo.User;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/4/3
 * Time: 18:26
 **/
public interface IUserDao {
    public abstract User getUser(String username);
    public abstract void insertUser();
    public abstract List<User> getUsers();
}
