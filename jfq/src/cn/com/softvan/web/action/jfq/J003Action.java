/*
 * 前台 内容页 ACTION类
 *
 * VERSION  DATE        BY              REASON
 * -------- ----------- --------------- ------------------------------------------
 * 1.00     2014.03.25  wuxiaogang           程序・发布
 * -------- ----------- --------------- ------------------------------------------
 * Copyright 2014 jfq  System. - All Rights Reserved.
 *
 */
package cn.com.softvan.web.action.jfq;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import cn.com.softvan.bean.sys.TcSysNewsBean;
import cn.com.softvan.bean.sys.TcSysNewsTypeBean;
import cn.com.softvan.service.sys.INewsManager;
import cn.com.softvan.service.sys.INewsTypeManager;
import cn.com.softvan.web.action.BaseAction;
/**
 * 前台 内容页 ACTION类
 * @author wuxiaogang 
 *
 */
public class J003Action  extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6103432072290645133L;
	private static final transient Logger log = Logger.getLogger(J003Action.class);
	/**资讯BEAN*/
	private TcSysNewsBean bean;
	/**资讯分类集合map*/
	private Map<String,List<TcSysNewsBean>> map;
	/**资讯信息管理 业务处理*/
	private INewsManager newsManager;
	/**资讯信息 栏目管理 业务处理*/
	private INewsTypeManager newsTypeManager;
	/** 默认的构造函数 */
	public J003Action() {
		log.info("J003Action constructed");
	}
	/**
	 * <p>主页</p>
	 * <ol>
	 * [功能概要] <div>主页。</div>
	 * </ol>
	 * @return 转发字符串
	 */
	public String init() throws Exception {
		log.info("J003Action init");
		String id=request.getParameter("id");//资讯id
		String tid=request.getParameter("tid");//栏目id
		String pid=request.getParameter("pid");//栏目父级id
		
		//栏目树
		TcSysNewsTypeBean bean2=new TcSysNewsTypeBean();
		bean2.setParent_id(pid);
		request.setAttribute("tree_array",newsTypeManager.findDataIsTree(bean2));
		//当前栏目id
		request.setAttribute("tid",tid);
		//当前栏目详情
		TcSysNewsTypeBean typeBean=new TcSysNewsTypeBean();
		typeBean.setId(tid);
		request.setAttribute("typeBean", newsTypeManager.findDataById(typeBean));
		//当前父栏目id
		request.setAttribute("pid",pid);
		//当前 父级 栏目详情
		TcSysNewsTypeBean typeBeanP=new TcSysNewsTypeBean();
		typeBeanP.setId(pid);
		request.setAttribute("typeBeanP", newsTypeManager.findDataById(typeBeanP));
		
		//资讯详情
		TcSysNewsBean nBean=new TcSysNewsBean();
		nBean.setId(id);
		bean=newsManager.findDataById(nBean);
		
		return "init";
	}
	/**
	 * 资讯BEAN取得
	 * @return 资讯BEAN
	 */
	public TcSysNewsBean getBean() {
	    return bean;
	}
	/**
	 * 资讯BEAN设定
	 * @param bean 资讯BEAN
	 */
	public void setBean(TcSysNewsBean bean) {
	    this.bean = bean;
	}
	/**
	 * 资讯分类集合map取得
	 * @return 资讯分类集合map
	 */
	public Map<String,List<TcSysNewsBean>> getMap() {
	    return map;
	}
	/**
	 * 资讯分类集合map设定
	 * @param map 资讯分类集合map
	 */
	public void setMap(Map<String,List<TcSysNewsBean>> map) {
	    this.map = map;
	}
	/**
	 * 资讯信息管理 业务处理取得
	 * @return 资讯信息管理 业务处理
	 */
	public INewsManager getNewsManager() {
	    return newsManager;
	}
	/**
	 * 资讯信息管理 业务处理设定
	 * @param newsManager 资讯信息管理 业务处理
	 */
	public void setNewsManager(INewsManager newsManager) {
	    this.newsManager = newsManager;
	}
	/**
	 * 资讯信息 栏目管理 业务处理取得
	 * @return 资讯信息 栏目管理 业务处理
	 */
	public INewsTypeManager getNewsTypeManager() {
	    return newsTypeManager;
	}
	/**
	 * 资讯信息 栏目管理 业务处理设定
	 * @param newsTypeManager 资讯信息 栏目管理 业务处理
	 */
	public void setNewsTypeManager(INewsTypeManager newsTypeManager) {
	    this.newsTypeManager = newsTypeManager;
	}
}
