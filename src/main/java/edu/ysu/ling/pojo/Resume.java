package edu.ysu.ling.pojo;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Resume {

    private int resumeId;//简历编号
    private long dreamJobId;//期望工作
    private String userId;
    private String resumeName;
    private String resumeNation;
    private String resumeBirthday;
    private String resumeCity;
    private String resumePhone;
    private String resumeMailAddress;
    private String resumeDescription;
    private int resumeWorkingExperienceTime;//工作时间

    public int getResumeId() {
        return resumeId;
    }

    public void setResumeId(int resumeId) {
        this.resumeId = resumeId;
    }

    public long getDreamJobId() {
        return dreamJobId;
    }

    public void setDreamJobId(long dreamJobId) {
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

    public String getResumeBirthday() {
        return resumeBirthday;
    }

    public void setResumeBirthday(String resumeBirthday) {
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
}
