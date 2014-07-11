/*
 * 导航管理 ActionClass
 *
 * VERSION  DATE        BY              REASON
 * -------- ----------- --------------- ------------------------------------------
 * 1.00     2014.03.28  wuxiaogang      程序・发布
 * -------- ----------- --------------- ------------------------------------------
 * Copyright 2014 jfq  System. - All Rights Reserved.
 *
 */
package cn.com.softvan.web.action.sys;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

import org.apache.log4j.Logger;

import cn.com.softvan.common.IOHelper;
import cn.com.softvan.common.Resources;
import cn.com.softvan.web.action.BaseAction;

/**
 * 导航管理 ActionClass
 * 
 * @author wuxiaogang
 * 
 */
public class S005Action extends BaseAction {

	/**
	 * 序列号
	 */
	private static final long serialVersionUID = -3061791975484213551L;
	private static final transient Logger log = Logger
			.getLogger(S005Action.class);

	//
	public S005Action() {
		log.info("默认构造器......S005Action");
	}

	/**
	 * <p>
	 * 初始化处理。
	 * </p>
	 * <ol>
	 * [功能概要] <div>初始化处理。</div>
	 * </ol>
	 * 
	 * @return 转发字符串
	 */
	public String init() {
		log.info("S005Action init.........");
		String s = request.getRealPath("/WEB-INF");
		try {
			request.setAttribute("text",IOHelper.readHtmlLine(s + Resources.getData("NAV_MENU")));
		} catch (Exception e) {
			log.error("导航管理,导航jsp读取失败!", e);
		}
		return "init";
	}

	/**
	 * <p>
	 * 信息保存
	 * </p>
	 * <ol>
	 * [功能概要] <div>新增。</div> <div>修改。</div>
	 * </ol>
	 * 
	 * @return 转发字符串
	 */
	public String save() {
		log.info("S005Action save.........");
		try {
			String s = request.getRealPath("/WEB-INF");
			File fp = new File(s +Resources.getData("NAV_MENU"));
			String str = request.getParameter("text");
			PrintWriter pfp = new PrintWriter(fp);
			pfp.print(str);
			pfp.close();
			request.setAttribute("msg", "1");
		} catch (FileNotFoundException e) {
			request.setAttribute("msg", "导航管理,导航jsp保存失败!");
			log.error("导航管理,导航jsp保存失败!",e);
		}
		return SUCCESS;
	}
}
