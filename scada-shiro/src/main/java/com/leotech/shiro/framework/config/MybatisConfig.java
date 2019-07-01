/**
 *
 */
package com.leotech.shiro.framework.config;

import tk.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

/**
 *
 */
@Component
@MapperScan("com.leotech.shiro.persistence.mapper")
public class MybatisConfig {
}
