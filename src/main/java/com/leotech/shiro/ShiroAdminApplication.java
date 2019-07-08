/**
 *
 */
package com.leotech.shiro;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * 程序启动类
 *
 */
@SpringBootApplication
@ComponentScan("com.leotech.shiro")
public class ShiroAdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(ShiroAdminApplication.class, args);
    }
}
