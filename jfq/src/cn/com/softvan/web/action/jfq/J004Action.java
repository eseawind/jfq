/*
 * 前台 搜索结果页 ACTION类
 *
 * VERSION  DATE        BY              REASON
 * -------- ----------- --------------- ------------------------------------------
 * 1.00     2014.03.25  wuxiaogang           程序・发布
 * -------- ----------- --------------- ------------------------------------------
 * Copyright 2014 jfq  System. - All Rights Reserved.
 *
 */
package cn.com.softvan.web.action.jfq;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.apache.log4j.Logger;

import cn.com.softvan.bean.sys.TcSysMemberBean;
import cn.com.softvan.bean.sys.TcSysNewsTypeBean;
import cn.com.softvan.common.CommonConstant;
import cn.com.softvan.common.Validator;
import cn.com.softvan.service.sys.IMemberManager;
import cn.com.softvan.service.sys.INewsManager;
import cn.com.softvan.service.sys.INewsTypeManager;
import cn.com.softvan.web.action.BaseAction;
import cn.com.softvan.web.tag.PageInfo;
/**
 * 前台 搜索结果页 ACTION类
 * @author wuxiaogang 
 *
 */
public class J004Action  extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6103432072290645133L;
	private static final transient Logger log = Logger.getLogger(J004Action.class);
	/**资讯信息管理 业务处理*/
	private INewsManager newsManager;
	/**资讯信息 栏目管理 业务处理*/
	private INewsTypeManager newsTypeManager;
	/**BEAN类  合作商信息*/
	private TcSysMemberBean bean;
	/**BEAN类  合作商信息 集合*/
	private List<TcSysMemberBean> beans;
	/**合作商信息管理 业务处理*/
	private IMemberManager memberManager;
	/** 默认的构造函数 */
	public J004Action() {
		log.info("J004Action constructed");
	}
	/**
	 * <p>主页</p>
	 * <ol>
	 * [功能概要] <div>主页。</div>
	 * </ol>
	 * @return 转发字符串
	 */
	public String init() throws Exception {
		log.info("J004Action init");
		String tid=request.getParameter("tid");//栏目id
		String pid=request.getParameter("pid");//栏目父级id
		
		String id=request.getParameter("id");//id
		
		request.setAttribute("id", id);
		
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
		
		//keyword
		request.setAttribute("keyword",request.getParameter("keyword"));
		//type
		request.setAttribute("type",request.getParameter("type"));
		return "init";
	}
	/**
	 * <p>默认 加载</p>
	 * <ol>
	 * [功能概要] <div>默认 加载。</div>
	 * </ol>
	 * @return 转发字符串
	 */
	public String init2() throws Exception {
		log.info("J004Action list1");
		TcSysMemberBean bean=new TcSysMemberBean();
		List<TcSysMemberBean> list=memberManager.findDataIsListTop(bean);
		if (list!=null){
			// 按照type对信息进行分组
			LinkedHashMap<String, List<TcSysMemberBean>> map = new LinkedHashMap<String, List<TcSysMemberBean>>();
			for (TcSysMemberBean news : list) {
				if(map.containsKey(news.getType())){
					 map.get(news.getType()).add(news);
				}else{
					 List<TcSysMemberBean> tempList=new ArrayList<TcSysMemberBean>();
					 tempList.add(news);
					 map.put(news.getType(),tempList);
				}
			}
			request.setAttribute("map", map);
		}
		return "init2";
	}
	/**
	 * <p>默认 加载</p>
	 * <ol>
	 * [功能概要] <div>默认 加载。</div>
	 * </ol>
	 * @return 转发字符串
	 */
	public String list1() throws Exception {
		log.info("J004Action list1");
		int offset = 0;
		// 分页偏移量
		if (!Validator.isNullEmpty(request.getParameter("offset"))
				&& Validator.isNum(request.getParameter("offset"))) {
			offset = Integer.parseInt(request.getParameter("offset"));
		}
		if(bean==null){
			bean=new TcSysMemberBean();
		}
		PageInfo page = new PageInfo(); 
		//当前页
		page.setCurrOffset(offset);
		//每页显示条数
		page.setPageRowCount(15);
		bean.setPageInfo(page);
		if(bean.getType()==null){
			if(request.getParameter("type")!=null){
				bean.setType(request.getParameter("type"));
			}else{
				bean.setType("xx");
			}
		}
		//分类
		request.setAttribute("type",bean.getType());
		//栏目资讯列表
		List<TcSysMemberBean> beans=memberManager.findDataIsPage(bean);
		request.setAttribute("beans",beans);
		request.setAttribute(CommonConstant.PAGEROW_OBJECT_KEY,page);
		return "list1";
	}
	/**
	 * <p>详情</p>
	 * <ol>
	 * [功能概要] <div>详情。</div>
	 * </ol>
	 * @return 转发字符串
	 */
	public String detail() throws Exception {
		log.info("J004Action datail");
		if(bean==null){
			bean=new TcSysMemberBean();
		}
		if(request.getParameter("id")!=null){
			bean.setId(request.getParameter("id"));
		}
		bean=memberManager.findDataById(bean);
		return "datail";
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
	/**
	 * BEAN类  合作商信息取得
	 * @return BEAN类  合作商信息
	 */
	public TcSysMemberBean getBean() {
	    return bean;
	}
	/**
	 * BEAN类  合作商信息设定
	 * @param bean BEAN类  合作商信息
	 */
	public void setBean(TcSysMemberBean bean) {
	    this.bean = bean;
	}
	/**
	 * BEAN类  合作商信息 集合取得
	 * @return BEAN类  合作商信息 集合
	 */
	public List<TcSysMemberBean> getBeans() {
	    return beans;
	}
	/**
	 * BEAN类  合作商信息 集合设定
	 * @param beans BEAN类  合作商信息 集合
	 */
	public void setBeans(List<TcSysMemberBean> beans) {
	    this.beans = beans;
	}
	/**
	 * 合作商信息管理 业务处理取得
	 * @return 合作商信息管理 业务处理
	 */
	public IMemberManager getMemberManager() {
	    return memberManager;
	}
	/**
	 * 合作商信息管理 业务处理设定
	 * @param memberManager 合作商信息管理 业务处理
	 */
	public void setMemberManager(IMemberManager memberManager) {
	    this.memberManager = memberManager;
	}
}
