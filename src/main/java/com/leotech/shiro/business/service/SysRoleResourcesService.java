/**
 *
 */
package com.leotech.shiro.business.service;


import com.leotech.shiro.business.entity.RoleResources;
import com.leotech.shiro.framework.object.AbstractService;

/**
 * 角色资源
 *
 */
public interface SysRoleResourcesService extends AbstractService<RoleResources, Long> {

    /**
     * 添加角色资源
     *
     * @param roleId
     * @param resourcesIds
     */
    void addRoleResources(Long roleId, String resourcesIds);

    /**
     * 通过角色id批量删除
     *
     * @param roleId
     */
    void removeByRoleId(Long roleId);
}
