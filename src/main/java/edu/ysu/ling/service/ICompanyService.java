package edu.ysu.ling.service;

import edu.ysu.ling.pojo.Company;

/**
 * Created by 10047 on 2017/5/1.
 */

public interface ICompanyService {

    public abstract Company findCompanyById(String companyId);

    public abstract boolean addCompany(Company company);

    public abstract Company changeCompany(Company company);
}
