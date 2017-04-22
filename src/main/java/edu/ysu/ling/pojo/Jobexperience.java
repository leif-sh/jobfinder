package edu.ysu.ling.pojo;

import java.util.Date;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Jobexperience {

    private String jobExperienceId;
    private int resumeId;
    private String jobCompanyName;
    private String jobOfYou;
    private Date jobBeginDate;
    private Date jobEndDate;
    private String jobDetail;

    public String getJobExperienceId() {
        return jobExperienceId;
    }

    public void setJobExperienceId(String jobExperienceId) {
        this.jobExperienceId = jobExperienceId;
    }

    public int getResumeId() {
        return resumeId;
    }

    public void setResumeId(int resumeId) {
        this.resumeId = resumeId;
    }

    public String getJobCompanyName() {
        return jobCompanyName;
    }

    public void setJobCompanyName(String jobCompanyName) {
        this.jobCompanyName = jobCompanyName;
    }

    public String getJobOfYou() {
        return jobOfYou;
    }

    public void setJobOfYou(String jobOfYou) {
        this.jobOfYou = jobOfYou;
    }

    public Date getJobBeginDate() {
        return jobBeginDate;
    }

    public void setJobBeginDate(Date jobBeginDate) {
        this.jobBeginDate = jobBeginDate;
    }

    public Date getJobEndDate() {
        return jobEndDate;
    }

    public void setJobEndDate(Date jobEndDate) {
        this.jobEndDate = jobEndDate;
    }

    public String getJobDetail() {
        return jobDetail;
    }

    public void setJobDetail(String jobDetail) {
        this.jobDetail = jobDetail;
    }
}
