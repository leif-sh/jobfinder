package edu.ysu.ling.service.impl;

import edu.ysu.ling.dao.IChatmessageDao;
import edu.ysu.ling.dao.IRequirementinfoDao;
import edu.ysu.ling.pojo.Chatmessage;
import edu.ysu.ling.service.IChatService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by 10047 on 2017/5/19.
 */

public class ChatServiceImpl implements IChatService {

    private static Logger logger = LoggerFactory.getLogger(CompanyServiceImpl.class);
    @Resource
    private SqlSessionFactory sqlSessionFactory;
    private IChatmessageDao chatmessageDao;
    private IRequirementinfoDao requirementinfoDao;

    @Override
    public List<Chatmessage> getAllChatForUser(String userId) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            chatmessageDao = sqlSession.getMapper(IChatmessageDao.class);
            Map<String,String> params = new HashMap();
            List<Chatmessage> chatmessageList = new ArrayList<>();
            params.put("userId", userId);
            List<String> businessUserIdList = chatmessageDao.selectChatBusinessusers(params);

            requirementinfoDao = sqlSession.getMapper(IRequirementinfoDao.class);
            if (businessUserIdList.size() > 0) {
                for (String businessUserId : businessUserIdList) {
                    params.put("businessUserId", businessUserId);
                    Chatmessage chatmessage = chatmessageDao.selectChatmessages(params);
                    chatmessage.setRequirementinfo(requirementinfoDao.selectRequirementinfoById(chatmessage.getJobMessageId()));
                    chatmessageList.add(chatmessage);
                }
            }
            return chatmessageList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }finally {
            sqlSession.close();
        }
    }

    @Override
    public List<Chatmessage> getAllChatForBusiness(String businessUserId) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            chatmessageDao = sqlSession.getMapper(IChatmessageDao.class);
            Map params = new HashMap();
            List<Chatmessage> chatmessageList = new ArrayList<>();
            params.put("businessUserId", businessUserId);
            List<String> userIdList = chatmessageDao.selectChatUsers(params);
            if (userIdList.size() > 0) {
                for (String userId : userIdList) {
                    params.put("userId", userId);
                    chatmessageList.add(chatmessageDao.selectChatmessages(params));
                }
            }
            return chatmessageList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }finally {
            sqlSession.close();
        }
    }


    @Override
    public List<Chatmessage> getChatDetail(Map params) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        List<Chatmessage> chatmessageList = null;
        try {
            chatmessageDao = sqlSession.getMapper(IChatmessageDao.class);
            chatmessageList = chatmessageDao.selectChatmessageById(params);
            return chatmessageList;
        } catch (Exception e) {
            e.printStackTrace();
            return  null;
        }finally {
            sqlSession.close();
        }
    }

    @Override
    public boolean addChat(Chatmessage chatmessage) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            chatmessageDao = sqlSession.getMapper(IChatmessageDao.class);
            chatmessage.setChatId(UUID.randomUUID().toString());
            chatmessage.setChatDateTime(new Date());
            chatmessageDao.insertChatmessage(chatmessage);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }finally {
            sqlSession.close();
        }
    }

    public SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
