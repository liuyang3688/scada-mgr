package com.leotech.shiro.persistence.beans;

import com.leotech.shiro.framework.object.AbstractDO;
import lombok.Data;
import lombok.EqualsAndHashCode;

//@Data : 相当于这5个属性@Getter @Setter @RequiredArgsConstructor @ToString @EqualsAndHashCode
//@Getter/@Setter : 注解在类上, 为类提供读写属性
//@ToString : 注解在类上, 为类提供 toString() 方法
//@Slf4j : 注解在类上, 为类提供一个属性名为 log 的 log4j 的日志对象
//@Log4j : 注解在类上, 为类提供一个属性名为 log 的 log4j 的日志对象
@Data
// callSuper=false 不调用父类的方法
@EqualsAndHashCode(callSuper = false)
public class SysUserRole extends AbstractDO {
    private Long userId;
    private Long roleId;
}
