package edu.ysu.ling.test;

import edu.ysu.ling.dao.IUserDao;
import edu.ysu.ling.pojo.User;
import edu.ysu.ling.service.IUserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.Reader;

/**
 * Created by ling on 2017/4/6.
 */
public class test {
        private static SqlSessionFactory sqlSessionFactory;
        private static Reader reader;


        static{
            try{
                reader  = Resources.getResourceAsReader("sqlMapConfig.xml");
                sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
            }catch(Exception e){
                e.printStackTrace();
            }
        }

        public static SqlSessionFactory getSession(){
            return sqlSessionFactory;
        }

        public static void main(String[] args) {
            SqlSession session = sqlSessionFactory.openSession();

            try {
                /*User user = (User) session.selectOne("edu.ysu.ling.dao.IUserDao.selectUserByUserId", "1001");
                System.out.println(user.getUserName());*/

                IUserDao userDao = session.getMapper(IUserDao.class);
                User user = userDao.selectUserByUserId("1001");
                System.out.println(user.getUserName());



            } finally {
                session.close();
            }
        }
}
