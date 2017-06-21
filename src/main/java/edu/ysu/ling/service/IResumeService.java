package edu.ysu.ling.service;/**
 * Created by 10047 on 2017/6/6.
 */

import edu.ysu.ling.pojo.*;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/6/6
 * Time: 21:43
 **/
public interface IResumeService {

    public abstract Resume getResumes(String userId);

    public abstract Resume changeResume(Resume resume);

    public abstract boolean addResume(Resume resume);

    public abstract Dreamjob getDreamJobs(int resumeId);

    public abstract Dreamjob changeDreamJob(Dreamjob dreamjob);

    public abstract boolean addDreamJob(Dreamjob dreamjob);

    public abstract List<Educationexperience> getEducationExperiences(int resumeId);

    public abstract Educationexperience changeEducationExperience(Educationexperience educationexperience);

    public abstract boolean addEducationExperience(Educationexperience educationexperience);

    public abstract List<Jobexperience> getJobExperiences(int resumeId);

    public abstract Jobexperience changeJobExperience(Jobexperience jobexperience);

    public abstract boolean addJobExperience(Jobexperience jobexperience);

    public abstract List<Projectexperience> getProjectExperience(int resumeId);

    public abstract Projectexperience changeProjectExperience(Projectexperience projectexperience);

    public abstract boolean addProjectExperience(Projectexperience projectexperience);
}
