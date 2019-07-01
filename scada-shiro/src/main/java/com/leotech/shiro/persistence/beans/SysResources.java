package com.leotech.shiro.persistence.beans;

import com.leotech.shiro.framework.object.AbstractDO;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Transient;
import java.util.List;

/**
 *
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class SysResources extends AbstractDO {
    private String name;
    private String type;
    private String url;
    private String permission;
    private Long parentId;
    private Integer sort;
    private Boolean external;
    private Boolean available;
    private String icon;

    @Transient
    private String checked;
    @Transient
    private SysResources parent;
    @Transient
    private List<SysResources> nodes;
}
