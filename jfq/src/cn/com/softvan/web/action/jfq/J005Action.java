/*
 * 友情链接页 ACTION类
 *
 * VERSION  DATE        BY              REASON
 * -------- ----------- --------------- ------------------------------------------
 * 1.00     2014.04.10  wuxiaogang      程序・发布
 * -------- ----------- --------------- ------------------------------------------
 * Copyright 2014 jfq  System. - All Rights Reserved.
 *
 */
package cn.com.softvan.web.action.jfq;

import java.util.List;

import org.apache.log4j.Logger;

import cn.com.softvan.bean.sys.TcSysParterBean;
import cn.com.softvan.common.CommonConstant;
import cn.com.softvan.common.Validator;
import cn.com.softvan.service.sys.IParterManager;
import cn.com.softvan.web.action.BaseAction;
import cn.com.softvan.web.tag.PageInfo;
/**
 * 前台 搜索结果页 ACTION类
 * @author wuxiaogang 
 *
 */
public class J005Action  extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6103432072290645133L;
	private static final transient Logger log = Logger.getLogger(J005Action.class);
	/**友情链接 管理 业务处理*/
	private IParterManager parterManager;
	/** 默认的构造函数 */
	public J005Action() {
		log.info("J005Action constructed");
	}
	/**
	 * <p>主页</p>
	 * <ol>
	 * [功能概要] <div>主页。</div>
	 * </ol>
	 * @return 转发字符串
	 */
	public String init() throws Exception {
		log.info("J005Action init");
		int offset = 0;
		// 分页偏移量
		if (!Validator.isNullEmpty(request.getParameter("offset"))
				&& Validator.isNum(request.getParameter("offset"))) {
			offset = Integer.parseInt(request.getParameter("offset"));
		}
		TcSysParterBean	bean=new TcSysParterBean();
		PageInfo page = new PageInfo(); 
		//当前页
		page.setCurrOffset(offset);
		//每页显示条数
		page.setPageRowCount(15);
		bean.setPageInfo(page);
		//分类
		request.setAttribute("type",bean.getType());
		//栏目资讯列表
		List<TcSysParterBean> beans=parterManager.findDataIsPage(bean);
		request.setAttribute("beans",beans);
		request.setAttribute(CommonConstant.PAGEROW_OBJECT_KEY,page);
		return "init";
	}
	/**
	 * 友情链接 管理 业务处理取得
	 * @return 友情链接 管理 业务处理
	 */
	public IParterManager getParterManager() {
	    return parterManager;
	}
	/**
	 * 友情链接 管理 业务处理设定
	 * @param parterManager 友情链接 管理 业务处理
	 */
	public void setParterManager(IParterManager parterManager) {
	    this.parterManager = parterManager;
	}
}
