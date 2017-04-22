package edu.ysu.ling.testClass;

import edu.ysu.ling.dao.IUserDao;
import edu.ysu.ling.dao.impl.userDao;
import org.junit.Test;

/**
 * Created by 10047 on 2017/4/3.
 */

public class test {


    @Test
    public void testGetUser(){
        IUserDao userDao = new userDao();
        userDao.getUsers();
    }
}
