/*
 * 资讯信息管理 service 接口实现类
 *
 * VERSION  DATE        BY              REASON
 * -------- ----------- --------------- ------------------------------------------
 * 1.00     2014.03.25  wuxiaogang      程序・发布
 * 1.01     2014.04.16  wuxiaogang      程序.更新  新增地址addres
 * -------- ----------- --------------- ------------------------------------------
 * Copyright 2014 jfq System. - All Rights Reserved.
 *
 */
package cn.com.softvan.service.sys.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.com.softvan.bean.sys.TcSysMemberBean;
import cn.com.softvan.common.CommonConstant;
import cn.com.softvan.common.IOHelper;
import cn.com.softvan.common.IdUtils;
import cn.com.softvan.common.Validator;
import cn.com.softvan.dao.daointer.sys.ITcSysMemberDao;
import cn.com.softvan.dao.entity.sys.TcSysMember;
import cn.com.softvan.service.BaseManager;
import cn.com.softvan.service.sys.IMemberManager;
/**
 *<p>资讯信息管理 service类。</p>
 * <ol>[功能概要] 
 * <div>信息编辑。</div>
 * <div>信息检索。</div>
 * </ol>
 * @author wuxiaogang
 */
public class MemberManager extends BaseManager implements IMemberManager {
	/** 日志 */
	private static final transient Logger log = Logger.getLogger(MemberManager.class);
	
	/**信息DAO 接口类*/
	private ITcSysMemberDao tcSysMemberDao;
	/**
	 * <p>信息编辑。</p>
	 * <ol>[功能概要] 
	 * <div>新增信息。</div>
	 * <div>修改信息。</div>
	 * </ol>
	 * @return 处理结果
	 * @throws Exception 
	 */
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT, timeout = CommonConstant.DB_DEFAULT_TIMEOUT, rollbackFor = {
			Exception.class, RuntimeException.class })
	public String saveOrUpdateData(TcSysMemberBean bean) throws Exception{
		String msg="1";
		if(bean!=null){
			try {
				TcSysMember dto=new TcSysMember();
				dto.setSort_num(bean.getSort_num()==null?"0":bean.getSort_num());//序号
				dto.setId(bean.getId());//id
				dto.setCity_id(bean.getCity_id());//行政区划_市级
				dto.setVillage_id(bean.getVillage_id());//行政区划_村级
				dto.setTown_id(bean.getTown_id());//行政区划_镇级
				dto.setCounty_id(bean.getCounty_id());//行政区划_县级
				dto.setProvince_id(bean.getProvince_id());//行政区划_省级
				dto.setVersion(bean.getVersion());//VERSION
				dto.setCode(bean.getCode());//编号
				dto.setPinyin(bean.getPinyin());//名称拼音
				dto.setName(bean.getName());//名称
				dto.setPic_url(bean.getPic_url());//照片
				dto.setType(bean.getType());//合作商类型0积分发行商1市场合作商3营销顾问
				dto.setCertificate_no(bean.getCertificate_no());//从业资格证
				dto.setCertificate_pic_url(bean.getCertificate_pic_url());//证书照片
				dto.setIndustry(bean.getIndustry());//所属行业
				dto.setSort_num(bean.getSort_num());//排序
				dto.setIs_show(bean.getIs_show());//是否展示
				if(Validator.notEmpty(bean.getDetail_info())){
				IOHelper.deleteFile(bean.getDetail_info());//TODO=删除文件
				dto.setDetail_info(IOHelper.writeHtml("html",bean.getDetail_info()));//内容
				}
				dto.setNote(bean.getNote());//备注
//				dto.setDate_created(bean.getDate_created());//数据输入日期
				dto.setCreate_id(bean.getCreate_id());//建立者ID
				dto.setCreate_ip(bean.getCreate_ip());//建立者IP
//				dto.setLast_updated(bean.getLast_updated());//资料更新日期
				dto.setUpdate_id(bean.getUpdate_id());//修改者ID
				dto.setUpdate_ip(bean.getUpdate_ip());//修改者IP
				dto.setDel_flag(bean.getDel_flag());//是否删除
				dto.setState(bean.getState());//状态
				dto.setIs_org(bean.getIs_org());//合作关系
				dto.setTel(bean.getTel());
				dto.setAddres(bean.getAddres());//地址
				dto.setContact_name(bean.getContact_name());
				dto.setParent_org(bean.getParent_org());
				//判断数据是否存在
				if(tcSysMemberDao.isDataYN(dto)!=0){
					//数据存在
					tcSysMemberDao.updateByPrimaryKeySelective(dto);
				}else{
					//新增
					if(Validator.isEmpty(dto.getId())){
						dto.setId(IdUtils.createUUID(32));
					}
					tcSysMemberDao.insert(dto);
				}
			} catch (Exception e) {
				msg="信息保存失败,数据库处理错误!";
				log.error(msg, e);
				throw new Exception(msg);
			}
		}
		return msg;
	}
	/**
	 * <p>信息编辑。</p>
	 * <ol>[功能概要] 
	 * <div>物理删除。</div>
	 * </ol>
	 * @return 处理结果
	 */
	public String deleteData(TcSysMemberBean bean) throws Exception{
		String msg="1";
		if(bean!=null){
			try {
				TcSysMember dto=new TcSysMember();
				dto.setId(bean.getId());//id
				tcSysMemberDao.deleteByPrimaryKey(dto);
			} catch (Exception e) {
				msg="信息删除失败,数据库处理错误!";
				log.error(msg, e);
			}
		}
		return msg;
	}
	/**
	 * <p>信息 单条。</p>
	 * <ol>[功能概要] 
	 * <div>逻辑删除。</div>
	 * </ol>
	 * @return 处理结果
	 */
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT, timeout = CommonConstant.DB_DEFAULT_TIMEOUT, rollbackFor = {
			Exception.class, RuntimeException.class })
	public String deleteDataById(TcSysMemberBean bean) throws Exception{
		String msg="1";
		if(bean!=null){
			try {
				TcSysMember dto=new TcSysMember();
				dto.setId(bean.getId());//ID
				tcSysMemberDao.deleteById(dto);
			} catch (Exception e) {
				msg="信息删除失败,数据库处理错误!";
				log.error(msg, e);
				throw new Exception(msg);
			}
		}
		return msg;
	}
	/**
	 * <p>信息列表 分页。</p>
	 * <ol>[功能概要] 
	 * <div>信息检索。</div>
	 * <div>分页。</div>
	 * </ol>
	 * @return 处理结果
	 */
	public List<TcSysMemberBean> findDataIsPage(TcSysMemberBean bean){
		List<TcSysMemberBean> beans=null;
		try {
    	   TcSysMember dto=new TcSysMember();
    	   if(bean!=null){
				dto.setSort_num(bean.getSort_num()==null?"0":bean.getSort_num());//序号
				dto.setId(bean.getId());//id
				dto.setCity_id(bean.getCity_id());//行政区划_市级
				dto.setVillage_id(bean.getVillage_id());//行政区划_村级
				dto.setTown_id(bean.getTown_id());//行政区划_镇级
				dto.setCounty_id(bean.getCounty_id());//行政区划_县级
				dto.setProvince_id(bean.getProvince_id());//行政区划_省级
				dto.setVersion(bean.getVersion());//VERSION
				dto.setCode(bean.getCode());//编号
				dto.setPinyin(bean.getPinyin());//名称拼音
				dto.setName(bean.getName());//名称
				dto.setPic_url(bean.getPic_url());//照片
				dto.setType(bean.getType());//合作商类型0积分发行商1市场合作商3营销顾问
				dto.setCertificate_no(bean.getCertificate_no());//从业资格证
				dto.setCertificate_pic_url(bean.getCertificate_pic_url());//证书照片
				dto.setIndustry(bean.getIndustry());//所属行业
				dto.setSort_num(bean.getSort_num());//排序
				dto.setIs_show(bean.getIs_show());//是否展示
				dto.setDetail_info(bean.getDetail_info());//内容
				dto.setNote(bean.getNote());//备注
//				dto.setDate_created(bean.getDate_created());//数据输入日期
				dto.setCreate_id(bean.getCreate_id());//建立者ID
				dto.setCreate_ip(bean.getCreate_ip());//建立者IP
//				dto.setLast_updated(bean.getLast_updated());//资料更新日期
				dto.setUpdate_id(bean.getUpdate_id());//修改者ID
				dto.setUpdate_ip(bean.getUpdate_ip());//修改者IP
				dto.setDel_flag(bean.getDel_flag());//是否删除
				dto.setState(bean.getState());//状态
				dto.setIs_org(bean.getIs_org());//合作关系
				dto.setPageInfo(bean.getPageInfo());//分页
				dto.setTel(bean.getTel());
				dto.setKeyword(bean.getKeyword());//
				dto.setAddres(bean.getAddres());//地址
				dto.setContact_name(bean.getContact_name());
				dto.setParent_org(bean.getParent_org());
    	   }
			beans=tcSysMemberDao.findDataIsPage(dto);
		} catch (Exception e) {
			log.error("信息查询失败,数据库错误!", e);
		}
		return beans;
	}
	/**
	 * <p>信息列表。</p>
	 * <ol>[功能概要] 
	 * <div>信息检索。</div>
	 * <div>列表。</div>
	 * </ol>
	 * @return 处理结果
	 */
	public List<TcSysMemberBean> findDataIsList(TcSysMemberBean bean){
		List<TcSysMemberBean> beans=null;
		try {
	    	   TcSysMember dto=new TcSysMember();
	    	   if(bean!=null){
	    		   dto.setSort_num(bean.getSort_num()==null?"0":bean.getSort_num());//序号
					dto.setId(bean.getId());//id
					dto.setCity_id(bean.getCity_id());//行政区划_市级
					dto.setVillage_id(bean.getVillage_id());//行政区划_村级
					dto.setTown_id(bean.getTown_id());//行政区划_镇级
					dto.setCounty_id(bean.getCounty_id());//行政区划_县级
					dto.setProvince_id(bean.getProvince_id());//行政区划_省级
					dto.setVersion(bean.getVersion());//VERSION
					dto.setCode(bean.getCode());//编号
					dto.setPinyin(bean.getPinyin());//名称拼音
					dto.setName(bean.getName());//名称
					dto.setPic_url(bean.getPic_url());//照片
					dto.setType(bean.getType());//合作商类型0积分发行商1市场合作商3营销顾问
					dto.setCertificate_no(bean.getCertificate_no());//从业资格证
					dto.setCertificate_pic_url(bean.getCertificate_pic_url());//证书照片
					dto.setIndustry(bean.getIndustry());//所属行业
					dto.setSort_num(bean.getSort_num());//排序
					dto.setIs_show(bean.getIs_show());//是否展示
					dto.setDetail_info(bean.getDetail_info());//内容
					dto.setNote(bean.getNote());//备注
//					dto.setDate_created(bean.getDate_created());//数据输入日期
					dto.setCreate_id(bean.getCreate_id());//建立者ID
					dto.setCreate_ip(bean.getCreate_ip());//建立者IP
//					dto.setLast_updated(bean.getLast_updated());//资料更新日期
					dto.setUpdate_id(bean.getUpdate_id());//修改者ID
					dto.setUpdate_ip(bean.getUpdate_ip());//修改者IP
					dto.setDel_flag(bean.getDel_flag());//是否删除
					dto.setState(bean.getState());//状态
					dto.setIs_org(bean.getIs_org());//合作关系
					dto.setTel(bean.getTel());
					dto.setAddres(bean.getAddres());//地址
					dto.setContact_name(bean.getContact_name());
					dto.setParent_org(bean.getParent_org());
	    	   }
				beans=tcSysMemberDao.findDataIsList(dto);
		} catch (Exception e) {
			log.error("信息查询失败,数据库错误!", e);
		}
		return beans;
	}
	/**
	 * <p>信息列表。</p>
	 * <ol>[功能概要] 
	 * <div>信息检索。</div>
	 * <div>列表。 默认</div>
	 * </ol>
	 * @return 处理结果
	 */
	public List<TcSysMemberBean> findDataIsListTop(TcSysMemberBean bean){
		List<TcSysMemberBean> beans=null;
		try {
	    	   TcSysMember dto=new TcSysMember();
	    	   if(bean!=null){
	    		   dto.setSort_num(bean.getSort_num()==null?"0":bean.getSort_num());//序号
					dto.setId(bean.getId());//id
					dto.setCity_id(bean.getCity_id());//行政区划_市级
					dto.setVillage_id(bean.getVillage_id());//行政区划_村级
					dto.setTown_id(bean.getTown_id());//行政区划_镇级
					dto.setCounty_id(bean.getCounty_id());//行政区划_县级
					dto.setProvince_id(bean.getProvince_id());//行政区划_省级
					dto.setVersion(bean.getVersion());//VERSION
					dto.setCode(bean.getCode());//编号
					dto.setPinyin(bean.getPinyin());//名称拼音
					dto.setName(bean.getName());//名称
					dto.setPic_url(bean.getPic_url());//照片
					dto.setType(bean.getType());//合作商类型0积分发行商1市场合作商3营销顾问
					dto.setCertificate_no(bean.getCertificate_no());//从业资格证
					dto.setCertificate_pic_url(bean.getCertificate_pic_url());//证书照片
					dto.setIndustry(bean.getIndustry());//所属行业
					dto.setSort_num(bean.getSort_num());//排序
					dto.setIs_show(bean.getIs_show());//是否展示
					dto.setDetail_info(bean.getDetail_info());//内容
					dto.setNote(bean.getNote());//备注
//					dto.setDate_created(bean.getDate_created());//数据输入日期
					dto.setCreate_id(bean.getCreate_id());//建立者ID
					dto.setCreate_ip(bean.getCreate_ip());//建立者IP
//					dto.setLast_updated(bean.getLast_updated());//资料更新日期
					dto.setUpdate_id(bean.getUpdate_id());//修改者ID
					dto.setUpdate_ip(bean.getUpdate_ip());//修改者IP
					dto.setDel_flag(bean.getDel_flag());//是否删除
					dto.setState(bean.getState());//状态
					dto.setIs_org(bean.getIs_org());//合作关系
					dto.setAddres(bean.getAddres());//地址
					dto.setContact_name(bean.getContact_name());
					dto.setParent_org(bean.getParent_org());
	    	   }
			beans=tcSysMemberDao.findDataIsListTop(dto);
		} catch (Exception e) {
			log.error("信息查询失败,数据库错误!", e);
		}
		return beans;
	}
	/**
	 * <p>信息详情。</p>
	 * <ol>[功能概要] 
	 * <div>信息检索。</div>
	 * <div>详情。</div>
	 * </ol>
	 * @return 处理结果
	 */
	public TcSysMemberBean findDataById(TcSysMemberBean bean){
       TcSysMemberBean bean1=null;
       try {
    	   TcSysMember dto=new TcSysMember();
    	   if(bean!=null){
    		   dto.setSort_num(bean.getSort_num()==null?"0":bean.getSort_num());//序号
				dto.setId(bean.getId());//id
				dto.setCity_id(bean.getCity_id());//行政区划_市级
				dto.setVillage_id(bean.getVillage_id());//行政区划_村级
				dto.setTown_id(bean.getTown_id());//行政区划_镇级
				dto.setCounty_id(bean.getCounty_id());//行政区划_县级
				dto.setProvince_id(bean.getProvince_id());//行政区划_省级
				dto.setVersion(bean.getVersion());//VERSION
				dto.setCode(bean.getCode());//编号
				dto.setPinyin(bean.getPinyin());//名称拼音
				dto.setName(bean.getName());//名称
				dto.setPic_url(bean.getPic_url());//照片
				dto.setType(bean.getType());//合作商类型0积分发行商1市场合作商3营销顾问
				dto.setCertificate_no(bean.getCertificate_no());//从业资格证
				dto.setCertificate_pic_url(bean.getCertificate_pic_url());//证书照片
				dto.setIndustry(bean.getIndustry());//所属行业
				dto.setSort_num(bean.getSort_num());//排序
				dto.setIs_show(bean.getIs_show());//是否展示
				dto.setDetail_info(bean.getDetail_info());//内容
				dto.setNote(bean.getNote());//备注
//				dto.setDate_created(bean.getDate_created());//数据输入日期
				dto.setCreate_id(bean.getCreate_id());//建立者ID
				dto.setCreate_ip(bean.getCreate_ip());//建立者IP
//				dto.setLast_updated(bean.getLast_updated());//资料更新日期
				dto.setUpdate_id(bean.getUpdate_id());//修改者ID
				dto.setUpdate_ip(bean.getUpdate_ip());//修改者IP
				dto.setDel_flag(bean.getDel_flag());//是否删除
				dto.setState(bean.getState());//状态
				dto.setIs_org(bean.getIs_org());//合作关系
				dto.setAddres(bean.getAddres());//地址
				dto.setContact_name(bean.getContact_name());
				dto.setParent_org(bean.getParent_org());
    	   }
			bean1=tcSysMemberDao.selectByPrimaryKey(dto);
			if(bean1!=null){
				if(Validator.notEmpty(bean1.getDetail_info())){
					bean1.setDetail_info(IOHelper.readHtml(bean1.getDetail_info()));
				}
			}
		} catch (Exception e) {
			log.error("信息详情查询失败,数据库错误!", e);
		}
		return bean1;
	}
	/**
	 * 信息DAO 接口类取得
	 * @return 信息DAO 接口类
	 */
	public ITcSysMemberDao getTcSysMemberDao() {
	    return tcSysMemberDao;
	}
	/**
	 * 信息DAO 接口类设定
	 * @param tcSysMemberDao 信息DAO 接口类
	 */
	public void setTcSysMemberDao(ITcSysMemberDao tcSysMemberDao) {
	    this.tcSysMemberDao = tcSysMemberDao;
	}
	/**
	 * <p>信息 单条。</p>
	 * <ol>[功能概要] 
	 * <div>恢复逻辑删除的数据。</div>
	 * </ol>
	 * @return 处理结果
	 */
	public String recoveryDataById(TcSysMemberBean bean) throws Exception{
		String msg="1";
		if(bean!=null){
			try {
				TcSysMember dto=new TcSysMember();
				dto.setId(bean.getId());//ID
				tcSysMemberDao.recoveryDataById(dto);
			} catch (Exception e) {
				msg="信息删除失败,数据库处理错误!";
				log.error(msg, e);
				throw new Exception(msg);
			}
		}
		return msg;
	}
}
