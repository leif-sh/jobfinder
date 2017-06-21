package edu.ysu.ling.service;/**
 * Created by 10047 on 2017/6/11.
 */

import edu.ysu.ling.pojo.Businessuser;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/6/11
 * Time: 13:05
 **/
public interface IBusinessUserService {

    public abstract Businessuser findUserById(String businessUserId);

    public abstract Businessuser findUserByEmailAddress(String businessMailAddress);

    public abstract boolean loginVerify(Businessuser businessuser);

    public abstract Businessuser addUser(Businessuser businessuser);
}
