/**
 *
 */
package com.leotech.shiro.business.service;


import com.github.pagehelper.PageInfo;
import com.leotech.shiro.business.entity.Role;
import com.leotech.shiro.business.vo.RoleConditionVO;
import com.leotech.shiro.business.entity.Role;
import com.leotech.shiro.business.vo.RoleConditionVO;
import com.leotech.shiro.framework.object.AbstractService;

import java.util.List;
import java.util.Map;

/**
 * 角色
 *
 */
public interface SysRoleService extends AbstractService<Role, Long> {

    /**
     * 获取ztree使用的角色列表
     *
     * @param uid
     * @return
     */
    List<Map<String, Object>> queryRoleListWithSelected(Integer uid);

    /**
     * 分页查询
     *
     * @param vo
     * @return
     */
    PageInfo<Role> findPageBreakByCondition(RoleConditionVO vo);

    /**
     * 获取用户的角色
     *
     * @param userId
     * @return
     */
    List<Role> listRolesByUserId(Long userId);
}
