package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/4/24.
 */

import edu.ysu.ling.pojo.Businessuser;
import edu.ysu.ling.pojo.Chatmessage;
import edu.ysu.ling.pojo.User;
import org.apache.xmlbeans.impl.xb.xsdschema.Public;

import java.util.List;
import java.util.Map;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/4/24
 * Time: 23:12
 **/
public interface IChatmessageDao {

    //通过Id查询
    public Chatmessage selectChatmessageById(String userId);

    //批量获取聊天记录
    public List<Chatmessage> getChatmessages(Map params);

    //获取最近沟通的联系人
    public List<User> getChatUsers(Map params);

    //获取最近沟通的企业联系人
    public List<Businessuser> getChatBusinessusers(Map params);

    //增加聊天
    public void insertUser(Chatmessage chatmessage);

    //删除聊天
    public boolean deleteChatmessage();
}
