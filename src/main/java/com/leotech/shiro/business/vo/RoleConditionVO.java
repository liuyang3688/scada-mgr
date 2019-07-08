/**
 *
 */
package com.leotech.shiro.business.vo;

import com.leotech.shiro.business.entity.Role;
import com.leotech.shiro.framework.object.BaseConditionVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class RoleConditionVO extends BaseConditionVO {
    private Role role;
}

