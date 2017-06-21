package edu.ysu.ling.pojo;

import java.util.Date;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Collectionjob {

    private String collectionId;
    private String jobMessageId;
    private String userId;
    private Date collectionDate;
    private Requirementinfo requirementinfo;


    public String getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(String collectionId) {
        this.collectionId = collectionId;
    }

    public String getJobMessageId() {
        return jobMessageId;
    }

    public void setJobMessageId(String jobMessageId) {
        this.jobMessageId = jobMessageId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getCollectionDate() {
        return collectionDate;
    }

    public void setCollectionDate(Date collectionDate) {
        this.collectionDate = collectionDate;
    }

    public Requirementinfo getRequirementinfo() {
        return requirementinfo;
    }

    public void setRequirementinfo(Requirementinfo requirementinfo) {
        this.requirementinfo = requirementinfo;
    }
}
