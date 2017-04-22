package edu.ysu.ling.pojo;

import java.util.Date;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Projectexperience {

    private String projectExperienceId;
    private int resumeId;
    private String projectName;
    private String projectDuty;
    private Date projectBeginDate;
    private Date projectEndDate;
    private String projectDescription;
    private String projectUrl;

    public String getProjectExperienceId() {
        return projectExperienceId;
    }

    public void setProjectExperienceId(String projectExperienceId) {
        this.projectExperienceId = projectExperienceId;
    }

    public int getResumeId() {
        return resumeId;
    }

    public void setResumeId(int resumeId) {
        this.resumeId = resumeId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectDuty() {
        return projectDuty;
    }

    public void setProjectDuty(String projectDuty) {
        this.projectDuty = projectDuty;
    }

    public Date getProjectBeginDate() {
        return projectBeginDate;
    }

    public void setProjectBeginDate(Date projectBeginDate) {
        this.projectBeginDate = projectBeginDate;
    }

    public Date getProjectEndDate() {
        return projectEndDate;
    }

    public void setProjectEndDate(Date projectEndDate) {
        this.projectEndDate = projectEndDate;
    }

    public String getProjectDescription() {
        return projectDescription;
    }

    public void setProjectDescription(String projectDescription) {
        this.projectDescription = projectDescription;
    }

    public String getProjectUrl() {
        return projectUrl;
    }

    public void setProjectUrl(String projectUrl) {
        this.projectUrl = projectUrl;
    }
}
