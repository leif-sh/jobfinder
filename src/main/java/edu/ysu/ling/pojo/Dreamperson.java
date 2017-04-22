package edu.ysu.ling.pojo;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Dreamperson {

    private String dreamPersonId;
    private int businessUserId;
    private String  dreamPersonType;
    private String dreamEducation;
    private String dreamPersonWorkExperience;

    public String getDreamPersonId() {
        return dreamPersonId;
    }

    public void setDreamPersonId(String dreamPersonId) {
        this.dreamPersonId = dreamPersonId;
    }

    public int getBusinessUserId() {
        return businessUserId;
    }

    public void setBusinessUserId(int businessUserId) {
        this.businessUserId = businessUserId;
    }

    public String getDreamPersonType() {
        return dreamPersonType;
    }

    public void setDreamPersonType(String dreamPersonType) {
        this.dreamPersonType = dreamPersonType;
    }

    public String getDreamEducation() {
        return dreamEducation;
    }

    public void setDreamEducation(String dreamEducation) {
        this.dreamEducation = dreamEducation;
    }

    public String getDreamPersonWorkExperience() {
        return dreamPersonWorkExperience;
    }

    public void setDreamPersonWorkExperience(String dreamPersonWorkExperience) {
        this.dreamPersonWorkExperience = dreamPersonWorkExperience;
    }
}
