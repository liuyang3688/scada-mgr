package com.leotech.shiro.persistence.mapper;

import com.leotech.shiro.business.vo.RoleConditionVO;
import com.leotech.shiro.persistence.beans.SysRole;
import com.leotech.shiro.plugin.BaseMapper;
import com.leotech.shiro.business.vo.RoleConditionVO;
import com.leotech.shiro.persistence.beans.SysRole;
import com.leotech.shiro.plugin.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 */
@Repository
public interface SysRoleMapper extends BaseMapper<SysRole> {

    /**
     * 分页查询
     *
     * @param vo
     * @return
     */
    List<SysRole> findPageBreakByCondition(RoleConditionVO vo);

    /**
     * 该节代码参考自http://blog.csdn.net/poorcoder_/article/details/71374002
     * 感谢网友
     *
     * @param userId
     * @return
     */
    List<SysRole> queryRoleListWithSelected(Integer userId);

    List<SysRole> listRolesByUserId(Long userId);
}
