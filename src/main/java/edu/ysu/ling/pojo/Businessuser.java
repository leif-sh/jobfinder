package edu.ysu.ling.pojo;

import javax.print.DocFlavor;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Businessuser {

    private int businessUserId;
    private int companyId;
    private String dreamPersonId;
    private String businessUserName;
    private String businessUserPassword;
    private String businessPhone;
    private String businessMailAddress;
    private String businessAccountPicture;
    private String businessRealName;

    public int getBusinessUserId() {
        return businessUserId;
    }

    public void setBusinessUserId(int businessUserId) {
        this.businessUserId = businessUserId;
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public String getDreamPersonId() {
        return dreamPersonId;
    }

    public void setDreamPersonId(String dreamPersonId) {
        this.dreamPersonId = dreamPersonId;
    }

    public String getBusinessUserName() {
        return businessUserName;
    }

    public void setBusinessUserName(String businessUserName) {
        this.businessUserName = businessUserName;
    }

    public String getBusinessUserPassword() {
        return businessUserPassword;
    }

    public void setBusinessUserPassword(String businessUserPassword) {
        this.businessUserPassword = businessUserPassword;
    }

    public String getBusinessPhone() {
        return businessPhone;
    }

    public void setBusinessPhone(String businessPhone) {
        this.businessPhone = businessPhone;
    }

    public String getBusinessMailAddress() {
        return businessMailAddress;
    }

    public void setBusinessMailAddress(String businessMailAddress) {
        this.businessMailAddress = businessMailAddress;
    }

    public String getBusinessAccountPicture() {
        return businessAccountPicture;
    }

    public void setBusinessAccountPicture(String businessAccountPicture) {
        this.businessAccountPicture = businessAccountPicture;
    }

    public String getBusinessRealName() {
        return businessRealName;
    }

    public void setBusinessRealName(String businessRealName) {
        this.businessRealName = businessRealName;
    }
}
