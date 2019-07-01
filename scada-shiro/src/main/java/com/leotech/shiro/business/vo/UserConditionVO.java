/**
 *
 */
package com.leotech.shiro.business.vo;

import com.leotech.shiro.business.entity.User;
import com.leotech.shiro.business.entity.User;
import com.leotech.shiro.framework.object.BaseConditionVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class UserConditionVO extends BaseConditionVO {
    private User user;
}
