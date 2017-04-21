package edu.ysu.ling.test;

import edu.ysu.ling.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * Created by ling on 2017/4/6.
 */
public interface IUserDao {
    @Select("select * from user where userId=#{id}")
    public User findUserById(@Param("id") int id);
}
