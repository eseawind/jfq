/*
 * 基础Entity类  合作商信息表
 *
 * VERSION  DATE        BY              REASON
 * -------- ----------- --------------- ------------------------------------------
 * 1.00     2014.03.26  wuxiaogang      程序.发布
 * 1.01     2014.04.16  wuxiaogang      程序.更新  新增addres contact_name parent_org
 * -------- ----------- --------------- ------------------------------------------
 * Copyright 2014 jfq  System. - All Rights Reserved.
 *
 */
package cn.com.softvan.dao.entity.sys;

import cn.com.softvan.dao.entity.BaseEntity;

/**
 * <p>
 * 合作商信息表
 * <p>
 * 
 * @author wuxiaogang
 * 
 */
public class TcSysMember extends BaseEntity {
	/** id */
	private String id;
	/** 行政区划_市级 */
	private String city_id;
	/** 行政区划_村级 */
	private String village_id;
	/** 行政区划_镇级 */
	private String town_id;
	/** 行政区划_县级 */
	private String county_id;
	/** 行政区划_省级 */
	private String province_id;
	/** 行政区划_市级 */
	private String city_name;
	/** 行政区划_村级 */
	private String village_name;
	/** 行政区划_镇级 */
	private String town_name;
	/** 行政区划_县级 */
	private String county_name;
	/** 行政区划_省级 */
	private String province_name;
	/** 编号 */
	private String code;
	/** 名称拼音 */
	private String pinyin;
	/** 名称 */
	private String name;
	/** 照片 */
	private String pic_url;
	/** 合作商类型0积分发行商1市场合作商3营销顾问 */
	private String type;
	/** 从业资格证 */
	private String certificate_no;
	/** 证书照片 */
	private String certificate_pic_url;
	/** 所属行业 */
	private String industry;
	/** 排序 */
	private String sort_num;
	/** 是否展示 */
	private String is_show;
	/** 内容 */
	private String detail_info;
	/** 状态 */
	private String state;
	/** 合作关系 */
	private String is_org;
	/** 电话 */
	private String tel;
	/** 地址 */
	private String addres;
	/** 联系人名称 */
	private String contact_name;
	/** 挂靠机构*/
	private String parent_org;
	/**
	 * id取得
	 * @return id
	 */
	public String getId() {
	    return id;
	}
	/**
	 * id设定
	 * @param id id
	 */
	public void setId(String id) {
	    this.id = id;
	}
	/**
	 * 行政区划_市级取得
	 * @return 行政区划_市级
	 */
	public String getCity_id() {
	    return city_id;
	}
	/**
	 * 行政区划_市级设定
	 * @param city_id 行政区划_市级
	 */
	public void setCity_id(String city_id) {
	    this.city_id = city_id;
	}
	/**
	 * 行政区划_村级取得
	 * @return 行政区划_村级
	 */
	public String getVillage_id() {
	    return village_id;
	}
	/**
	 * 行政区划_村级设定
	 * @param village_id 行政区划_村级
	 */
	public void setVillage_id(String village_id) {
	    this.village_id = village_id;
	}
	/**
	 * 行政区划_镇级取得
	 * @return 行政区划_镇级
	 */
	public String getTown_id() {
	    return town_id;
	}
	/**
	 * 行政区划_镇级设定
	 * @param town_id 行政区划_镇级
	 */
	public void setTown_id(String town_id) {
	    this.town_id = town_id;
	}
	/**
	 * 行政区划_县级取得
	 * @return 行政区划_县级
	 */
	public String getCounty_id() {
	    return county_id;
	}
	/**
	 * 行政区划_县级设定
	 * @param county_id 行政区划_县级
	 */
	public void setCounty_id(String county_id) {
	    this.county_id = county_id;
	}
	/**
	 * 行政区划_省级取得
	 * @return 行政区划_省级
	 */
	public String getProvince_id() {
	    return province_id;
	}
	/**
	 * 行政区划_省级设定
	 * @param province_id 行政区划_省级
	 */
	public void setProvince_id(String province_id) {
	    this.province_id = province_id;
	}
	/**
	 * 行政区划_市级取得
	 * @return 行政区划_市级
	 */
	public String getCity_name() {
	    return city_name;
	}
	/**
	 * 行政区划_市级设定
	 * @param city_name 行政区划_市级
	 */
	public void setCity_name(String city_name) {
	    this.city_name = city_name;
	}
	/**
	 * 行政区划_村级取得
	 * @return 行政区划_村级
	 */
	public String getVillage_name() {
	    return village_name;
	}
	/**
	 * 行政区划_村级设定
	 * @param village_name 行政区划_村级
	 */
	public void setVillage_name(String village_name) {
	    this.village_name = village_name;
	}
	/**
	 * 行政区划_镇级取得
	 * @return 行政区划_镇级
	 */
	public String getTown_name() {
	    return town_name;
	}
	/**
	 * 行政区划_镇级设定
	 * @param town_name 行政区划_镇级
	 */
	public void setTown_name(String town_name) {
	    this.town_name = town_name;
	}
	/**
	 * 行政区划_县级取得
	 * @return 行政区划_县级
	 */
	public String getCounty_name() {
	    return county_name;
	}
	/**
	 * 行政区划_县级设定
	 * @param county_name 行政区划_县级
	 */
	public void setCounty_name(String county_name) {
	    this.county_name = county_name;
	}
	/**
	 * 行政区划_省级取得
	 * @return 行政区划_省级
	 */
	public String getProvince_name() {
	    return province_name;
	}
	/**
	 * 行政区划_省级设定
	 * @param province_name 行政区划_省级
	 */
	public void setProvince_name(String province_name) {
	    this.province_name = province_name;
	}
	/**
	 * 编号取得
	 * @return 编号
	 */
	public String getCode() {
	    return code;
	}
	/**
	 * 编号设定
	 * @param code 编号
	 */
	public void setCode(String code) {
	    this.code = code;
	}
	/**
	 * 名称拼音取得
	 * @return 名称拼音
	 */
	public String getPinyin() {
	    return pinyin;
	}
	/**
	 * 名称拼音设定
	 * @param pinyin 名称拼音
	 */
	public void setPinyin(String pinyin) {
	    this.pinyin = pinyin;
	}
	/**
	 * 名称取得
	 * @return 名称
	 */
	public String getName() {
	    return name;
	}
	/**
	 * 名称设定
	 * @param name 名称
	 */
	public void setName(String name) {
	    this.name = name;
	}
	/**
	 * 照片取得
	 * @return 照片
	 */
	public String getPic_url() {
	    return pic_url;
	}
	/**
	 * 照片设定
	 * @param pic_url 照片
	 */
	public void setPic_url(String pic_url) {
	    this.pic_url = pic_url;
	}
	/**
	 * 合作商类型0积分发行商1市场合作商3营销顾问取得
	 * @return 合作商类型0积分发行商1市场合作商3营销顾问
	 */
	public String getType() {
	    return type;
	}
	/**
	 * 合作商类型0积分发行商1市场合作商3营销顾问设定
	 * @param type 合作商类型0积分发行商1市场合作商3营销顾问
	 */
	public void setType(String type) {
	    this.type = type;
	}
	/**
	 * 从业资格证取得
	 * @return 从业资格证
	 */
	public String getCertificate_no() {
	    return certificate_no;
	}
	/**
	 * 从业资格证设定
	 * @param certificate_no 从业资格证
	 */
	public void setCertificate_no(String certificate_no) {
	    this.certificate_no = certificate_no;
	}
	/**
	 * 证书照片取得
	 * @return 证书照片
	 */
	public String getCertificate_pic_url() {
	    return certificate_pic_url;
	}
	/**
	 * 证书照片设定
	 * @param certificate_pic_url 证书照片
	 */
	public void setCertificate_pic_url(String certificate_pic_url) {
	    this.certificate_pic_url = certificate_pic_url;
	}
	/**
	 * 所属行业取得
	 * @return 所属行业
	 */
	public String getIndustry() {
	    return industry;
	}
	/**
	 * 所属行业设定
	 * @param industry 所属行业
	 */
	public void setIndustry(String industry) {
	    this.industry = industry;
	}
	/**
	 * 排序取得
	 * @return 排序
	 */
	public String getSort_num() {
	    return sort_num;
	}
	/**
	 * 排序设定
	 * @param sort_num 排序
	 */
	public void setSort_num(String sort_num) {
	    this.sort_num = sort_num;
	}
	/**
	 * 是否展示取得
	 * @return 是否展示
	 */
	public String getIs_show() {
	    return is_show;
	}
	/**
	 * 是否展示设定
	 * @param is_show 是否展示
	 */
	public void setIs_show(String is_show) {
	    this.is_show = is_show;
	}
	/**
	 * 内容取得
	 * @return 内容
	 */
	public String getDetail_info() {
	    return detail_info;
	}
	/**
	 * 内容设定
	 * @param detail_info 内容
	 */
	public void setDetail_info(String detail_info) {
	    this.detail_info = detail_info;
	}
	/**
	 * 状态取得
	 * @return 状态
	 */
	public String getState() {
	    return state;
	}
	/**
	 * 状态设定
	 * @param state 状态
	 */
	public void setState(String state) {
	    this.state = state;
	}
	/**
	 * 合作关系取得
	 * @return 合作关系
	 */
	public String getIs_org() {
	    return is_org;
	}
	/**
	 * 合作关系设定
	 * @param is_org 合作关系
	 */
	public void setIs_org(String is_org) {
	    this.is_org = is_org;
	}
	/**
	 * 电话取得
	 * @return 电话
	 */
	public String getTel() {
	    return tel;
	}
	/**
	 * 电话设定
	 * @param tel 电话
	 */
	public void setTel(String tel) {
	    this.tel = tel;
	}
	/**
	 * 地址取得
	 * @return 地址
	 */
	public String getAddres() {
	    return addres;
	}
	/**
	 * 地址设定
	 * @param addres 地址
	 */
	public void setAddres(String addres) {
	    this.addres = addres;
	}
	/**
	 * 联系人名称取得
	 * @return 联系人名称
	 */
	public String getContact_name() {
	    return contact_name;
	}
	/**
	 * 联系人名称设定
	 * @param contact_name 联系人名称
	 */
	public void setContact_name(String contact_name) {
	    this.contact_name = contact_name;
	}
	/**
	 * 挂靠机构取得
	 * @return 挂靠机构
	 */
	public String getParent_org() {
	    return parent_org;
	}
	/**
	 * 挂靠机构设定
	 * @param parent_org 挂靠机构
	 */
	public void setParent_org(String parent_org) {
	    this.parent_org = parent_org;
	}
}