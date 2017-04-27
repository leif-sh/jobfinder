package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/4/23.
 */

import edu.ysu.ling.pojo.User;
import org.apache.ibatis.annotations.Param;

import javax.jws.soap.SOAPBinding;
import java.util.List;
import java.util.Map;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/4/23
 * Time: 11:10
 **/
public interface IUserDao {

    //通过Id查询用户
    public User selectUserByUserId(String userId);
    //批量获取用户
    public List<User> getUsers(Map params);
    //增加用户
    public void insertUser(@Param("user") User user);
    //修改用户信息
    public boolean updateUser(User user);
    //删除用户
    public boolean deleteUser(User user);
}
