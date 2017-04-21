package edu.ysu.ling.test;

import edu.ysu.ling.pojo.User;
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
                /*User user = (User) session.selectOne("user.findUserById", 1);
                System.out.println(user.getUsername());
                System.out.println(user.getPassword());*/
                IUserDao userDao = session.getMapper(IUserDao.class);
                User user = userDao.findUserById(1);
                System.out.println(user.getUsername());

            } finally {
                session.close();
            }
        }
}
