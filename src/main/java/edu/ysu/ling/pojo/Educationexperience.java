package edu.ysu.ling.pojo;

import javax.print.DocFlavor;
import java.util.Date;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Educationexperience {

    private String educationExperienceId;
    private int resumeId;
    private String educationSchoolName;
    private String educationMajor;
    private String educationExperience;
    private Date educationGraduateDate;
    private Date educationBeginDate;
    private String educationLevel;

    public String getEducationExperienceId() {
        return educationExperienceId;
    }

    public void setEducationExperienceId(String educationExperienceId) {
        this.educationExperienceId = educationExperienceId;
    }

    public int getResumeId() {
        return resumeId;
    }

    public void setResumeId(int resumeId) {
        this.resumeId = resumeId;
    }

    public String getEducationSchoolName() {
        return educationSchoolName;
    }

    public void setEducationSchoolName(String educationSchoolName) {
        this.educationSchoolName = educationSchoolName;
    }

    public String getEducationMajor() {
        return educationMajor;
    }

    public void setEducationMajor(String educationMajor) {
        this.educationMajor = educationMajor;
    }

    public String getEducationExperience() {
        return educationExperience;
    }

    public void setEducationExperience(String educationExperience) {
        this.educationExperience = educationExperience;
    }

    public Date getEducationGraduateDate() {
        return educationGraduateDate;
    }

    public void setEducationGraduateDate(Date educationGraduateDate) {
        this.educationGraduateDate = educationGraduateDate;
    }

    public Date getEducationBeginDate() {
        return educationBeginDate;
    }

    public void setEducationBeginDate(Date educationBeginDate) {
        this.educationBeginDate = educationBeginDate;
    }

    public String getEducationLevel() {
        return educationLevel;
    }

    public void setEducationLevel(String educationLevel) {
        this.educationLevel = educationLevel;
    }
}
