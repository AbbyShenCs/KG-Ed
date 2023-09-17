package edu.yctc.project.system.news.mapper;

import java.util.List;

import edu.yctc.project.system.news.domain.News;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author yctc
 * @date 2023-04-19
 */
public interface NewsMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public News selectNewsById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param news 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<News> selectNewsList(News news);

    /**
     * 新增【请填写功能名称】
     * 
     * @param news 【请填写功能名称】
     * @return 结果
     */
    public int insertNews(News news);

    /**
     * 修改【请填写功能名称】
     * 
     * @param news 【请填写功能名称】
     * @return 结果
     */
    public int updateNews(News news);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteNewsById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteNewsByIds(String[] ids);
}
