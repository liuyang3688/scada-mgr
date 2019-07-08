package com.leotech.shiro.persistence.mapper;

import com.leotech.shiro.business.vo.UserConditionVO;
import com.leotech.shiro.persistence.beans.SysUser;
import com.leotech.shiro.plugin.BaseMapper;
import com.leotech.shiro.business.vo.UserConditionVO;
import com.leotech.shiro.persistence.beans.SysUser;
import com.leotech.shiro.plugin.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 */
@Repository
public interface SysUserMapper extends BaseMapper<SysUser> {

    List<SysUser> findPageBreakByCondition(UserConditionVO vo);

    List<SysUser> listByRoleId(Long roleId);

}
