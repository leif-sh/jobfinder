package edu.ysu.ling.service;

import edu.ysu.ling.pojo.Chatmessage;

import java.util.List;
import java.util.Map;

/**
 * Created by ling on 2017/5/17.
 */
public interface IChatService {

    /**
     * 获取最近所有会话
     * @return
     */
    public abstract List<Chatmessage> getAllChatForUser(String userId);

    public abstract List<Chatmessage> getAllChatForBusiness(String businessUserId);

    /**
     * 获取详细聊天记录
     * @return
     */
    public abstract List<Chatmessage> getChatDetail(Map params);

    /**
     * 添加聊天
     * @return
     */
    public abstract boolean addChat(Chatmessage chatmessage);

}
