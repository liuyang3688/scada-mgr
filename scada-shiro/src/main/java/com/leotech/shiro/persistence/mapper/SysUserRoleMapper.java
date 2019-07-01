package com.leotech.shiro.persistence.mapper;

import com.leotech.shiro.plugin.BaseMapper;
import com.leotech.shiro.persistence.beans.SysUserRole;
import com.leotech.shiro.plugin.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 */
@Repository
public interface SysUserRoleMapper extends BaseMapper<SysUserRole> {
    List<Integer> findUserIdByRoleId(Integer roleId);
}
