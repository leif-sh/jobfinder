package edu.ysu.ling.test;

import edu.ysu.ling.dao.IRequirementinfoDao;
import edu.ysu.ling.pojo.Requirementinfo;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Reader;

/**
 * Created by ling on 2017/4/6.
 */
public class test {
    private static Logger logger = LoggerFactory.getLogger(test.class);
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

                /*IUserDao userDao = session.getMapper(IUserDao.class);
                User user = userDao.selectUserByUserId("1001");
                System.out.println(user.getUserName());*/

                Requirementinfo requirementinfo = new Requirementinfo();
                requirementinfo.setJobMessageId("10011231231");
                /*ILaGouDao laGouDao = session.getMapper(ILaGouDao.class);
                laGouDao.insertRequirementinfo(requirementinfo);*/
                IRequirementinfoDao requirementinfoDao = session.getMapper(IRequirementinfoDao.class);
                requirementinfoDao.catchRequirementinfo(requirementinfo);
                session.commit();
                logger.info("添加一条数据成功！！！");

               /* Map params = new HashMap();
                List<Requirementinfo> list = session.selectList("edu.ysu.ling.dao.ILaGouDao.selectRequirementinfos", params);
                System.out.println(list.size());*/

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                session.close();
            }
        }
}
