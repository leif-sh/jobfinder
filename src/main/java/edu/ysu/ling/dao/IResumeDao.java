package edu.ysu.ling.dao;

import edu.ysu.ling.pojo.*;

import java.util.List;
import java.util.Map;

/**
 * Created by 10047 on 2017/6/6.
 */

/**
 * 简历相关的操作
 */
public interface IResumeDao {
    /**
     * 查询简历
     * @param userId
     * @return
     */
    public abstract Resume selectResumeByUserId(String userId);

    /**
     * 更新简历
     * @param resume
     */
    public abstract void updateResume(Resume resume);

    /**
     * 添加简历
     * @param resume
     */
    public abstract void insertResume(Resume resume);

    /**
     * 删除简历
     * @param resume
     */
    public abstract void deleteResume(Resume resume);

    /**
     * 查询期望工作
     * @param resumeId
     * @return
     */
    public abstract Dreamjob selectDreamJobByResumeId(int resumeId);

    /**
     * 更新期望工作
     * @param dreamjob
     */
    public abstract void updateDreamJob(Dreamjob dreamjob);

    /**
     * 添加期望工作
     * @param dreamjob
     */
    public abstract void insertDreamJob(Dreamjob dreamjob);

    /**
     * 删除期望工作
     * @param dreamjob
     */
    public abstract void deleteDreamJob(Dreamjob dreamjob);

    /**
     * 查询教育经历
     * @param ResumeId
     * @return
     */
    public abstract List<Educationexperience> selectEducationExperienceByResumeId(int ResumeId);

    public abstract Educationexperience selectEducationById(String educationExperienceId);
    /**
     * 更新教育经历
     * @param educationexperience
     */
    public abstract void updateEducationExperience(Educationexperience educationexperience);

    /**
     * 添加教育经历
     * @param educationexperience
     */
    public abstract void insertEducationExperience(Educationexperience educationexperience);

    /**
     * 删除教育经历
     * @param educationexperience
     */
    public abstract void deleteEducationExperience(Educationexperience educationexperience);

    /**
     * 查询工作经验
     * @param ResumeId
     * @return
     */
    public abstract List<Jobexperience> selectJobExperienceByResumeId(int ResumeId);

    public abstract Jobexperience selectJobExperienceById(String JobExperienceId);
    /**
     * 更新工作经验
     * @param jobexperience
     */
    public abstract void updateJobExperience(Jobexperience jobexperience);

    /**
     * 添加工作经验
     * @param jobexperience
     */
    public abstract void insertJobExperience(Jobexperience jobexperience);

    /**
     * 删除教育经历
     * @param jobexperience
     */
    public abstract void deleteJobExperience(Jobexperience jobexperience);

    /**
     * 查询项目经历
     * @param ResumeId
     * @return
     */
    public abstract List<Projectexperience> selectProjectExperienceByResumeId(int ResumeId);

    public abstract Projectexperience selectProjectExperienceById(String projectExperienceId);
    /**
     * 更新项目经历
     * @param projectexperience
     */
    public abstract void updateProjectExperience(Projectexperience projectexperience);

    /**
     * 添加项目经历
     * @param projectexperience
     */
    public abstract void insertProjectExperience(Projectexperience projectexperience);

    /**
     * 删除项目经历
     * @param projectexperience
     */
    public abstract void deleteProjectExperience(Projectexperience projectexperience);

    public abstract List<Dreamjob> selectDreamJobs(Map params);

    public abstract List<Resume> selectResumeForPush(Map params);
}
