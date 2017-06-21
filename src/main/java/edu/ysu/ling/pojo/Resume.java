package edu.ysu.ling.pojo;

import java.util.Date;
import java.util.List;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Resume {

    private int resumeId;//简历编号
    private String dreamJobId;//期望工作
    private String userId;
    private String resumeName;
    private String resumeNation;
    private Date resumeBirthday;
    private String resumeCity;
    private String resumePhone;
    private String resumeMailAddress;
    private String resumeDescription;
    private int resumeWorkingExperienceTime;//工作时间
    private int percent;
    private Date updateTime;
    private String resumeEducationLevel;

    private Dreamjob dreamjob;
    private List<Educationexperience> educationexperienceList;
    private List<Projectexperience> projectexperienceList;
    private List<Jobexperience> jobexperienceList;

    public int getResumeId() {
        return resumeId;
    }

    public void setResumeId(int resumeId) {
        this.resumeId = resumeId;
    }

    public String getDreamJobId() {
        return dreamJobId;
    }

    public void setDreamJobId(String dreamJobId) {
        this.dreamJobId = dreamJobId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getResumeName() {
        return resumeName;
    }

    public void setResumeName(String resumeName) {
        this.resumeName = resumeName;
    }

    public String getResumeNation() {
        return resumeNation;
    }

    public void setResumeNation(String resumeNation) {
        this.resumeNation = resumeNation;
    }

    public Date getResumeBirthday() {
        return resumeBirthday;
    }

    public void setResumeBirthday(Date resumeBirthday) {
        this.resumeBirthday = resumeBirthday;
    }

    public String getResumeCity() {
        return resumeCity;
    }

    public void setResumeCity(String resumeCity) {
        this.resumeCity = resumeCity;
    }

    public String getResumePhone() {
        return resumePhone;
    }

    public void setResumePhone(String resumePhone) {
        this.resumePhone = resumePhone;
    }

    public String getResumeMailAddress() {
        return resumeMailAddress;
    }

    public void setResumeMailAddress(String resumeMailAddress) {
        this.resumeMailAddress = resumeMailAddress;
    }

    public String getResumeDescription() {
        return resumeDescription;
    }

    public void setResumeDescription(String resumeDescription) {
        this.resumeDescription = resumeDescription;
    }

    public int getResumeWorkingExperienceTime() {
        return resumeWorkingExperienceTime;
    }

    public void setResumeWorkingExperienceTime(int resumeWorkingExperienceTime) {
        this.resumeWorkingExperienceTime = resumeWorkingExperienceTime;
    }

    public int getPercent() {
        return percent;
    }

    public void setPercent(int percent) {
        this.percent = percent;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Dreamjob getDreamjob() {
        return dreamjob;
    }

    public void setDreamjob(Dreamjob dreamjob) {
        this.dreamjob = dreamjob;
    }

    public List<Educationexperience> getEducationexperienceList() {
        return educationexperienceList;
    }

    public void setEducationexperienceList(List<Educationexperience> educationexperienceList) {
        this.educationexperienceList = educationexperienceList;
    }

    public List<Projectexperience> getProjectexperienceList() {
        return projectexperienceList;
    }

    public void setProjectexperienceList(List<Projectexperience> projectexperienceList) {
        this.projectexperienceList = projectexperienceList;
    }

    public List<Jobexperience> getJobexperienceList() {
        return jobexperienceList;
    }

    public void setJobexperienceList(List<Jobexperience> jobexperienceList) {
        this.jobexperienceList = jobexperienceList;
    }

    public String getResumeEducationLevel() {
        return resumeEducationLevel;
    }

    public void setResumeEducationLevel(String resumeEducationLevel) {
        this.resumeEducationLevel = resumeEducationLevel;
    }
}
