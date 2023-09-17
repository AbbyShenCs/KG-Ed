package edu.yctc.project.system.stu.service;

import java.util.List;

import edu.yctc.project.system.stu.domain.CourseStu;

/**
 * 学生课程信息Service接口
 * 
 * @author yctc
 * @date 2023-04-18
 */
public interface ICourseStuService 
{
    /**
     * 查询学生课程信息
     * 
     * @param id 学生课程信息ID
     * @return 学生课程信息
     */
    public CourseStu selectCourseStuById(Long id);

    /**
     * 查询学生课程信息列表
     * 
     * @param courseStu 学生课程信息
     * @return 学生课程信息集合
     */
    public List<CourseStu> selectCourseStuList(CourseStu courseStu);

    /**
     * 新增学生课程信息
     * 
     * @param courseStu 学生课程信息
     * @return 结果
     */
    public int insertCourseStu(CourseStu courseStu);

    /**
     * 修改学生课程信息
     * 
     * @param courseStu 学生课程信息
     * @return 结果
     */
    public int updateCourseStu(CourseStu courseStu);

    /**
     * 批量删除学生课程信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteCourseStuByIds(String ids);

    /**
     * 删除学生课程信息信息
     * 
     * @param id 学生课程信息ID
     * @return 结果
     */
    public int deleteCourseStuById(Long id);
}
