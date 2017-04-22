package edu.ysu.ling.pojo;

import java.util.Date;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Collectionjob {

    private int collectionId;
    private String jobMessageId;
    private String userId;
    private Date collectionDate;

    public int getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
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
}
