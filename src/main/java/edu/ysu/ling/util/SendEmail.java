package edu.ysu.ling.util;

import edu.ysu.ling.pojo.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

public class SendEmail {

	public static void sendForgetPassword(String mail_address, Map<String,String> params) {
		//String mail_address = "litie@blwit.com";
		try {
			String password = params.get("password");

			MailSenderInfo mailInfo = new MailSenderInfo();
			//mailInfo.setMailServerHost("smtp.qq.com");//smtp.163.com
			//mailInfo.setMailServerPort("587");//25
			mailInfo.setValidate(true);

			mailInfo.setUserName("1004774010@qq.com");// 邮箱用户名
			mailInfo.setPassword("mo44199582844ri*");// 邮箱密码
			mailInfo.setFromAddress("1004774010@qq.com");// 发件人邮箱
			mailInfo.setToAddress(mail_address);// 收件人邮箱
			mailInfo.setSubject("找回密码--来自JobFinder");// 邮件标题
			StringBuffer buffer = new StringBuffer();// 邮件内容
			buffer.append("您的密码为:\n"+password);
			buffer.append("");
			mailInfo.setContent(buffer.toString());

			//SimpleMailSender.sendTextMail(mailInfo);// 发送文体格式

			SimpleMailSender.sendHtmlMail(mailInfo);// 发送html格式
			System.out.println("邮件发送完毕");

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void sendCode(String mail_address,String code) {
		//String mail_address = "litie@blwit.com";
		try {

			MailSenderInfo mailInfo = new MailSenderInfo();
			//mailInfo.setMailServerHost("smtp.qq.com");//smtp.163.com
			//mailInfo.setMailServerPort("587");//25
			mailInfo.setValidate(true);

			mailInfo.setUserName("1004774010@qq.com");// 邮箱用户名
			mailInfo.setPassword("mo44199582844ri*");// 邮箱密码
			mailInfo.setFromAddress("1004774010@qq.com");// 发件人邮箱
			mailInfo.setToAddress(mail_address);// 收件人邮箱
			mailInfo.setSubject("验证码--来自JobFinder");// 邮件标题
			StringBuffer buffer = new StringBuffer();// 邮件内容
			buffer.append("您的验证码为:\n"+code);
			buffer.append("");
			mailInfo.setContent(buffer.toString());

			//SimpleMailSender.sendTextMail(mailInfo);// 发送文体格式

			SimpleMailSender.sendHtmlMail(mailInfo);// 发送html格式
			System.out.println("邮件发送完毕");

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void sendJobMessage(String mail_address, Map params) {
		//String mail_address = "litie@blwit.com";
		try {
			List<Requirementinfo> requirementinfoList = (List<Requirementinfo>) params.get("requirementinfoList");
			User user = (User) params.get("user");
			Dreamjob dreamjob = (Dreamjob) params.get("dreamJob");

			MailSenderInfo mailInfo = new MailSenderInfo();
			//mailInfo.setMailServerHost("smtp.qq.com");//smtp.163.com
			//mailInfo.setMailServerPort("587");//25
			mailInfo.setValidate(true);

			mailInfo.setUserName("1004774010@qq.com");// 邮箱用户名
			mailInfo.setPassword("mo44199582844ri*");// 邮箱密码
			mailInfo.setFromAddress("1004774010@qq.com");// 发件人邮箱
			mailInfo.setToAddress(mail_address);// 收件人邮箱
			mailInfo.setSubject("职位推送--来自JobFinder");// 邮件标题
			StringBuffer buffer = new StringBuffer();// 邮件内容
			buffer.append("用户"+user.getRealName()+"您好，以下职位来自JobFinder每日推送：<br><br>");
			for (int n=0;n<3;n++) {
				buffer.append(requirementinfoList.get(n).getSourceCompanyName() + "正在招聘" + dreamjob.getDreamJobName()+"<br>");
				buffer.append(requirementinfoList.get(n).getJobName()+"|"+requirementinfoList.get(n).getJobCity()+
						"薪资："+requirementinfoList.get(n).getSalary()+"&nbsp;工作经验："+requirementinfoList.get(n).getJobExperience()+
						"&nbsp;学历："+requirementinfoList.get(n).getEducationLevel()+"&nbsp;工作地址："+requirementinfoList.get(n).getJobAddress()+
						"&nbsp;<a href=\""+requirementinfoList.get(n).getJobUrl()+"\">点击查看该职位</a><br><br>");
			}
			buffer.append(":\n");
			buffer.append("");
			mailInfo.setContent(buffer.toString());

			SimpleMailSender.sendHtmlMail(mailInfo);// 发送html格式
			System.out.println("邮件发送完毕");

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void sendPersonMessage(String mail_address, Map params) {
		//String mail_address = "litie@blwit.com";
		try {
			Businessuser businessuser = (Businessuser) params.get("businessuser");
			List<Resume> resumeList = (List<Resume>) params.get("resumeList");


			MailSenderInfo mailInfo = new MailSenderInfo();
			mailInfo.setValidate(true);

			mailInfo.setUserName("1004774010@qq.com");// 邮箱用户名
			mailInfo.setPassword("mo44199582844ri*");// 邮箱密码
			mailInfo.setFromAddress("1004774010@qq.com");// 发件人邮箱
			mailInfo.setToAddress(mail_address);// 收件人邮箱
			mailInfo.setSubject("人才推送--来自JobFinder");// 邮件标题
			StringBuffer buffer = new StringBuffer();// 邮件内容
			buffer.append("用户"+businessuser.getBusinessRealName()+"您好，以下人才信息来自JobFinder每日推送：<br><br>");
			for (int n=0;n<resumeList.size();n++) {
				buffer.append(resumeList.get(n).getResumeName() + "正在求职<br>");
				buffer.append("所在城市："+resumeList.get(n).getResumeCity()+"&nbsp;教育经历："+resumeList.get(n).getResumeEducationLevel()+"&nbsp;工作经验："+
						resumeList.get(n).getResumeWorkingExperienceTime()+"&nbsp;联系电话："+resumeList.get(n).getResumePhone()+"<br><br>");

			}
			buffer.append(":\n");
			buffer.append("");
			mailInfo.setContent(buffer.toString());

			SimpleMailSender.sendHtmlMail(mailInfo);// 发送html格式
			System.out.println("邮件发送完毕");

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
