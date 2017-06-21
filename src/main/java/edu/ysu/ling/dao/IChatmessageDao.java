package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/4/24.
 */

import edu.ysu.ling.pojo.Chatmessage;

import java.util.List;
import java.util.Map;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/4/24
 * Time: 23:12
 **/
public interface IChatmessageDao {

    /**
     * 通过Id查询
     * @param params
     * @return
     */
    public List<Chatmessage> selectChatmessageById(Map params);

    /**
     * 获取聊天记录最新的一条
     * @param params
     * @return
     */
    public Chatmessage selectChatmessages(Map params);

    /**
     * 获取最近沟通的联系人
     * @param params
     * @return
     */
    public List<String> selectChatUsers(Map params);

    /**
     * 获取最近沟通的企业联系人
     * @param params
     * @return
     */
    public List<String> selectChatBusinessusers(Map params);

    /**
     * 增加聊天信息
     * @param chatmessage
     */
    public void insertChatmessage(Chatmessage chatmessage);

    /**
     * 删除聊天
     * @return
     */
    public boolean deleteChatmessage(Chatmessage chatmessage);

    /**
     * 计算聊天数量
     * @param params
     * @return
     */
    public int selectChatCount(Map params);
}
