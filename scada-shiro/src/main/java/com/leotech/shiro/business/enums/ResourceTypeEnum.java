/**
 *
 */
package com.leotech.shiro.business.enums;

/**
 *
 */
public enum ResourceTypeEnum {
    menu("菜单"), button("按钮");

    private final String info;

    ResourceTypeEnum(String info) {
        this.info = info;
    }

    public String getInfo() {
        return info;
    }
}
