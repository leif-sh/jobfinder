package edu.ysu.ling.pojo;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Company {

    private String companyId;//公司编号
    private String companyName;//公司名称
    private String companyType;//公司类型 电子商务 互联网
    private String companyScale;//公司规模
    private String companyPosition;//公司位置
    private String companyIntroduction;
    private String companyProperty;//公司
    private String companyWebsite;//公司网站

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }

    public String getCompanyScale() {
        return companyScale;
    }

    public void setCompanyScale(String companyScale) {
        this.companyScale = companyScale;
    }

    public String getCompanyPosition() {
        return companyPosition;
    }

    public void setCompanyPosition(String companyPosition) {
        this.companyPosition = companyPosition;
    }

    public String getCompanyIntroduction() {
        return companyIntroduction;
    }

    public void setCompanyIntroduction(String companyIntroduction) {
        this.companyIntroduction = companyIntroduction;
    }

    public String getCompanyProperty() {
        return companyProperty;
    }

    public void setCompanyProperty(String companyProperty) {
        this.companyProperty = companyProperty;
    }

    public String getCompanyWebsite() {
        return companyWebsite;
    }

    public void setCompanyWebsite(String companyWebsite) {
        this.companyWebsite = companyWebsite;
    }

    @Override
    public String toString() {
        return "Company{" +
                "companyId=" + companyId +
                ", companyName='" + companyName + '\'' +
                ", companyType='" + companyType + '\'' +
                ", companyScale='" + companyScale + '\'' +
                ", companyPosition='" + companyPosition + '\'' +
                ", companyIntroduction='" + companyIntroduction + '\'' +
                ", companyProperty='" + companyProperty + '\'' +
                ", companyWebsite='" + companyWebsite + '\'' +
                '}';
    }
}
