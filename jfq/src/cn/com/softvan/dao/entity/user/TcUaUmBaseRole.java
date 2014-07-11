/*
 * 基础Entity类   角色
 *
 * VERSION  DATE        BY              REASON
 * -------- ----------- --------------- ------------------------------------------
 * 1.00     2014.02.26  ll           程序发布
 * -------- ----------- --------------- ------------------------------------------
 * Copyright 2014  jfq   System. - All Rights Reserved.
 *
 */
package cn.com.softvan.dao.entity.user;

import cn.com.softvan.dao.entity.BaseEntity;
/**
 * <p> 角色 <p>
 * @author wangzi
 *
 */
public class TcUaUmBaseRole extends BaseEntity {
	
	
 
    /**
     * 角色编号
     */
    private String role_id;

    /**
     * 角色名称
     */
    private String ro_name;

    /**
     * 角色描述
     */
    private String description;
    /**
     * 拥有所有权限
     */
    private  String ro_super;
    /**
     * 排列顺序
     */
    private String  ro_priority;
    /**
     * 角色来源
     */
    private String ro_source;
   
	/**
	 * 角色编号取得。
	 * @return 角色编号
	 */
	public String getRole_id() {
	    return role_id;
	}
	/**
	 * 角色编号设定。
	 * @param role_id 角色编号
	 */
	public void setRole_id(String role_id) {
	    this.role_id = role_id;
	}
	/**
	 * 角色名称取得。
	 * @return 角色名称
	 */
	public String getRo_name() {
	    return ro_name;
	}
	/**
	 * 角色名称设定。
	 * @param ro_name 角色名称
	 */
	public void setRo_name(String ro_name) {
	    this.ro_name = ro_name;
	}
	/**
	 * 角色描述取得。
	 * @return 角色描述
	 */
	public String getDescription() {
	    return description;
	}
	/**
	 * 角色描述设定。
	 * @param description 角色描述
	 */
	public void setDescription(String description) {
	    this.description = description;
	}
	 
	/**
	 * 拥有所有权限取得。
	 * @return 拥有所有权限
	 */
	public String getRo_super() {
	    return ro_super;
	}
	/**
	 * 拥有所有权限设定。
	 * @param ro_super 拥有所有权限
	 */
	public void setRo_super(String ro_super) {
	    this.ro_super = ro_super;
	}
	/**
	 * 排列顺序取得。
	 * @return 排列顺序
	 */
	public String getRo_priority() {
	    return ro_priority;
	}
	/**
	 * 排列顺序设定。
	 * @param ro_priority 排列顺序
	 */
	public void setRo_priority(String ro_priority) {
	    this.ro_priority = ro_priority;
	}
	/**
	 * 角色来源取得。
	 * @return 角色来源
	 */
	public String getRo_source() {
	    return ro_source;
	}
	/**
	 * 角色来源设定。
	 * @param ro_source 角色来源
	 */
	public void setRo_source(String ro_source) {
	    this.ro_source = ro_source;
	}
	 
    

	 
}