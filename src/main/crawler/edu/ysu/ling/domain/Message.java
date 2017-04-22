package edu.ysu.ling.domain;

import java.util.Date;

/**
 * Created by 10047 on 2016/12/26.
 */
public class Message {
    private String jobName;//职位名称
    private String companyName;//公司名称
    private String salary;//工资范围
    private String publishResource;//信息来源
    private String jobLabels;//工作标签 其实是需求标签 包括工作城市 工作经验 学历等等
    private String jobClass;//工作方向 包括Java c++等等
    private int    salaryTop;//工资上限
    private int    salaryBottom;//工资下限
    private String jobRequest;//实际工作需要掌握的技能标签
    private String jobAdvantage;//职位诱惑
    private String jobQualification;//任职资格
    private String jobDescription;//职位描述
    private String jobAddress;//工作地址
    private String jobCity;//工作城市
    private String jobExperience;//工作经验
    private int    jobExperienceTop;//工作经验上限
    private int    JobExperienceBottom;//工作经验下限
    private String educationLevel;//学历
    private Date   jobDateTime;//职位信息更新日期时间
    private String teamDescription;//团队描述

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getJobRequest() {
        return jobRequest;
    }

    public void setJobRequest(String jobRequest) {
        this.jobRequest = jobRequest;
    }

    public String getPublishResource() {
        return publishResource;
    }

    public void setPublishResource(String publishResource) {
        this.publishResource = publishResource;
    }

    public String getJobLabels() {
        return jobLabels;
    }

    public void setJobLabels(String jobLabels) {
        this.jobLabels = jobLabels;
    }

    public String getJobClass() {
        return jobClass;
    }

    public void setJobClass(String jobClass) {
        this.jobClass = jobClass;
    }

    public int getSalaryTop() {
        return salaryTop;
    }

    public void setSalaryTop(int salaryTop) {
        this.salaryTop = salaryTop;
    }

    public int getSalaryBottom() {
        return salaryBottom;
    }

    public void setSalaryBottom(int salaryBottom) {
        this.salaryBottom = salaryBottom;
    }

    public String getJobAdvantage() {
        return jobAdvantage;
    }

    public void setJobAdvantage(String jobAdvantage) {
        this.jobAdvantage = jobAdvantage;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public String getJobAddress() {
        return jobAddress;
    }

    public void setJobAddress(String jobAddress) {
        this.jobAddress = jobAddress;
    }

    public String getJobCity() {
        return jobCity;
    }

    public void setJobCity(String jobCity) {
        this.jobCity = jobCity;
    }

    public Date getJobDateTime() {
        return jobDateTime;
    }

    public void setJobDateTime(Date jobDateTime) {
        this.jobDateTime = jobDateTime;
    }

    public String getTeamDescription() {
        return teamDescription;
    }

    public void setTeamDescription(String teamDescription) {
        this.teamDescription = teamDescription;
    }

    public String getJobExperience() {
        return jobExperience;
    }

    public void setJobExperience(String jobExperience) {
        this.jobExperience = jobExperience;
    }

    public String getEducationLevel() {
        return educationLevel;
    }

    public void setEducationLevel(String educationLevel) {
        this.educationLevel = educationLevel;
    }

    public String getJobQualification() {
        return jobQualification;
    }

    public void setJobQualification(String jobQualification) {
        this.jobQualification = jobQualification;
    }

    public int getJobExperienceTop() {
        return jobExperienceTop;
    }

    public void setJobExperienceTop(int jobExperienceTop) {
        this.jobExperienceTop = jobExperienceTop;
    }

    public int getJobExperienceBottom() {
        return JobExperienceBottom;
    }

    public void setJobExperienceBottom(int jobExperienceBottom) {
        JobExperienceBottom = jobExperienceBottom;
    }
}
