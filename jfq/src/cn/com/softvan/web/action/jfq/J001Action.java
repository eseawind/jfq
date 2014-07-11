/*
 * 前台首页 ACTION类
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
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import cn.com.softvan.bean.sys.TcSysMemberBean;
import cn.com.softvan.bean.sys.TcSysNewsBean;
import cn.com.softvan.service.sys.IMemberManager;
import cn.com.softvan.service.sys.INewsManager;
import cn.com.softvan.service.sys.INewsTypeManager;
import cn.com.softvan.service.sys.IParterManager;
import cn.com.softvan.web.action.BaseAction;
/**
 * 前台首页 ACTION类
 * @author wuxiaogang 
 *
 */
public class J001Action  extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6103432072290645133L;
	private static final transient Logger log = Logger.getLogger(J001Action.class);
	/**资讯BEAN*/
	private TcSysNewsBean bean;
	/**资讯分类集合map*/
	private Map<String,List<TcSysNewsBean>> map;
	/**资讯信息管理 业务处理*/
	private INewsManager newsManager;
	/**资讯信息 栏目管理 业务处理*/
	private INewsTypeManager newsTypeManager;
	/**友情链接 管理 业务处理*/
	private IParterManager parterManager;
	/**合作商信息管理 业务处理*/
	private IMemberManager memberManager;
	/** 默认的构造函数 */
	public J001Action() {
		log.info("J001Action constructed");
	}
	/**
	 * <p>主页</p>
	 * <ol>
	 * [功能概要] <div>主页。</div>
	 * </ol>
	 * @return 转发字符串
	 */
	public String init() throws Exception {
		log.info("J001Action init");
		//TODO--时间原因--先写死
		/*
		    04c4df422f4c4180a17d7858890a6477            信息披露
			085b6a779b2f455aa0525514267fcf73	大事记
			17edcf2195a9412e8fc771b0f17791c1	组织架构
			2fc984af564d4011a9fd9455378662e4	历年表彰
			30f1519b63284b9aa39c3257cca5b1a4	中心要闻======= 首页
			72411a4ab2944dd283d9dbdbdb0c9096	中心会员
			7489507dd9cd46adbb983d6969a1cc52	中心服务
			84cad3b56fbe4b1bac76f5d8975038cc	行业新闻======= 首页
			91687669ced24ba0a5531fb206c266e7	企业文化
			b6acaac469a34a20a7291fe9e114a474	领导寄语
			bc1805ddc61648469bbc1724fdba4f45	基本服务
			c7bfa8bd43204ef6bdf4a63a3e55d90e	关于我们
			cfddb14569d449ad9c75968fc3f7b874	焦点新闻======= 首页
			d10f3bb3e24e48d88cb8efa0e79b447e	交易规则
			d8610e83cd8f40c593700d46e458f5a7	企业简介
			f1c37b8a30a4468aadb720f3379ea116	快速导航======= 首页====已删
			f721e75b33bb4db6a484fa52ffdab341	滚动播报
			fc7b461b14dd4187b31aaf29e2c019fa	中心新闻======= 首页
			fe74600b95be418a9d0b82700f8e3786	业务流程
		 */
		//前台显示 中心公告+行业新闻+中心要闻+焦点新闻
		TcSysNewsBean bean=new TcSysNewsBean();
		bean.setMsgtype("index");//首页展示 标记
		List<TcSysNewsBean> list=newsManager.findDataIsList(bean);
		if (list!=null){
			// 按照type_id对信息进行分组
			LinkedHashMap<String, List<TcSysNewsBean>> map = new LinkedHashMap<String, List<TcSysNewsBean>>();
			for (TcSysNewsBean news : list) {
				if(map.containsKey(news.getType_id())){
					 map.get(news.getType_id()).add(news);
				}else{
					 List<TcSysNewsBean> tempList=new ArrayList<TcSysNewsBean>();
					 tempList.add(news);
					 map.put(news.getType_id(),tempList);
				}
			}
			request.setAttribute("map", map);
		}
//		//------友情链接------
//		Map<String,List<TcSysParterBean>> partermap=new HashMap<String,List<TcSysParterBean>>();
//		TcSysParterBean parterBean=new TcSysParterBean();
//		//发行商
//		parterBean.setType("0");
//		partermap.put("k0", parterManager.findDataIsListTop(parterBean));
//		//服务商
//		parterBean.setType("1");
//		partermap.put("k1", parterManager.findDataIsListTop(parterBean));
//		//
//		request.setAttribute("partermap",partermap);
//		
		//-------合作商-------
		TcSysMemberBean memberBean=new TcSysMemberBean();
		memberBean.setNote("index");//坑
		//
		List<TcSysMemberBean> memberBeans=memberManager.findDataIsListTop(memberBean);
		if (memberBeans!=null){
			// 按照type对信息进行分组
			Map<String,List<TcSysMemberBean>> memberMap=new HashMap<String,List<TcSysMemberBean>>();
			for (TcSysMemberBean news : memberBeans) {
				if(memberMap.containsKey(news.getType())){
					memberMap.get(news.getType()).add(news);
				}else{
					 List<TcSysMemberBean> tempList=new ArrayList<TcSysMemberBean>();
					 tempList.add(news);
					 memberMap.put(news.getType(),tempList);
				}
			}
			request.setAttribute("memberMap", memberMap);
		}
		//msgtype==1 快速导航======= 首页
		bean=new TcSysNewsBean();
		bean.setMsgtype("quick_navigation");//首页展示 标记
		request.setAttribute("quick_navigation_beans", newsManager.findDataIsList(bean));
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
