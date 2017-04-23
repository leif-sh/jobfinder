package edu.ysu.ling.test;

import edu.ysu.ling.pojo.User;
import edu.ysu.ling.service.IUserService;
import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;


import javax.annotation.Resource;

import static org.junit.Assert.assertNotNull;

/**
 * Created by 10047 on 2017/4/23.
 */

public class TestMybatis {
    private static Logger logger = Logger.getLogger(TestMybatis.class);

    @Resource
    private IUserService userService = null;

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void test() {
        assertNotNull(userService);
        User user = userService.findUserByUserId("1001");
        logger.info(user.getUserName());
    }

}
