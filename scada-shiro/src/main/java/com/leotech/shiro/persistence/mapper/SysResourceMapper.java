package com.leotech.shiro.persistence.mapper;

import com.leotech.shiro.business.vo.ResourceConditionVO;
import com.leotech.shiro.persistence.beans.SysResources;
import com.leotech.shiro.plugin.BaseMapper;
import com.leotech.shiro.business.vo.ResourceConditionVO;
import com.leotech.shiro.persistence.beans.SysResources;
import com.leotech.shiro.plugin.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 *
 */
@Repository
public interface SysResourceMapper extends BaseMapper<SysResources> {

    /**
     * 分页查询
     *
     * @param vo
     * @return
     */
    List<SysResources> findPageBreakByCondition(ResourceConditionVO vo);

    List<SysResources> listUserResources(Map<String, Object> map);

    /**
     *
     * @param rid
     * @return
     */
    List<SysResources> queryResourcesListWithSelected(Long rid);

    List<SysResources> listUrlAndPermission();

    List<SysResources> listAllAvailableMenu();

    List<SysResources> listMenuResourceByPid(Long pid);

    List<SysResources> listByUserId(Long userId);
}
