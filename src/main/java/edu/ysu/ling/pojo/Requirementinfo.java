package edu.ysu.ling.pojo;

import java.util.Date;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Requirementinfo {
    private String jobMessageId;//职位编号
    private String jobName;//职位名称
    private String sourceCompanyName;//公司名称
    private String salary;//工资范围
    private String publishResource;//信息来源
    private String jobLabels;//工作标签 包括Java c++等等
    private String jobClass;//工作类型 全职 兼职
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
    private Date jobDateTime;//职位信息更新日期时间
    private String teamDescription;//团队描述
    private String companyId;//公司编号
    private long campusRequirementId;//校招编号
    private int businessUserId;//企业用户Id
    private String jobUrl;
    private Date catchJobTime;//抓取时间

    public String getJobMessageId() {
        return jobMessageId;
    }

    public void setJobMessageId(String jobMessageId) {
        this.jobMessageId = jobMessageId;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getSourceCompanyName() {
        return sourceCompanyName;
    }

    public void setSourceCompanyName(String sourceCompanyName) {
        this.sourceCompanyName = sourceCompanyName;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
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

    public String getJobRequest() {
        return jobRequest;
    }

    public void setJobRequest(String jobRequest) {
        this.jobRequest = jobRequest;
    }

    public String getJobAdvantage() {
        return jobAdvantage;
    }

    public void setJobAdvantage(String jobAdvantage) {
        this.jobAdvantage = jobAdvantage;
    }

    public String getJobQualification() {
        return jobQualification;
    }

    public void setJobQualification(String jobQualification) {
        this.jobQualification = jobQualification;
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

    public String getJobExperience() {
        return jobExperience;
    }

    public void setJobExperience(String jobExperience) {
        this.jobExperience = jobExperience;
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

    public String getEducationLevel() {
        return educationLevel;
    }

    public void setEducationLevel(String educationLevel) {
        this.educationLevel = educationLevel;
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

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public long getCampusRequirementId() {
        return campusRequirementId;
    }

    public void setCampusRequirementId(long campusRequirementId) {
        this.campusRequirementId = campusRequirementId;
    }

    public int getBusinessUserId() {
        return businessUserId;
    }

    public void setBusinessUserId(int businessUserId) {
        this.businessUserId = businessUserId;
    }

    public String getJobUrl() {
        return jobUrl;
    }

    public void setJobUrl(String jobUrl) {
        this.jobUrl = jobUrl;
    }

    public Date getCatchJobTime() {
        return catchJobTime;
    }

    public void setCatchJobTime(Date catchJobTime) {
        this.catchJobTime = catchJobTime;
    }

    @Override
    public String toString() {
        return "Requirementinfo{" +
                "jobMessageId='" + jobMessageId + '\'' +
                ", jobName='" + jobName + '\'' +
                ", sourceCompanyName='" + sourceCompanyName + '\'' +
                ", salary='" + salary + '\'' +
                ", publishResource='" + publishResource + '\'' +
                ", jobLabels='" + jobLabels + '\'' +
                ", jobClass='" + jobClass + '\'' +
                ", salaryTop=" + salaryTop +
                ", salaryBottom=" + salaryBottom +
                ", jobRequest='" + jobRequest + '\'' +
                ", jobAdvantage='" + jobAdvantage + '\'' +
                ", jobQualification='" + jobQualification + '\'' +
                ", jobDescription='" + jobDescription + '\'' +
                ", jobAddress='" + jobAddress + '\'' +
                ", jobCity='" + jobCity + '\'' +
                ", jobExperience='" + jobExperience + '\'' +
                ", jobExperienceTop=" + jobExperienceTop +
                ", JobExperienceBottom=" + JobExperienceBottom +
                ", educationLevel='" + educationLevel + '\'' +
                ", jobDateTime=" + jobDateTime +
                ", teamDescription='" + teamDescription + '\'' +
                ", companyId=" + companyId +
                ", campusRequirementId=" + campusRequirementId +
                ", businessUserId=" + businessUserId +
                ", jobUrl='" + jobUrl + '\'' +
                '}';
    }

}
