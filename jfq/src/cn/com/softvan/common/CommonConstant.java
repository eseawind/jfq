package cn.com.softvan.common;



/**
 * <p>系统程序用常量</p>
 * @author wuxiaogang
 *
 */
public class CommonConstant {
	/** 数据库事务默认超时时间 */
	public static final int DB_DEFAULT_TIMEOUT = 300;
	/** 分页对象KEY */
	public static final String PAGEROW_OBJECT_KEY = "PAGEROW_OBJECT_KEY";
	/** 分页偏移量名称 */
	public static final String PAGEROW_OFFSET_NAME = "offset";
	/** 默认画面每页的记录数 */
	public static final int PAGEROW_DEFAULT_COUNT = 15;
	/** 画面显示的页码数量 */
	public static final int PAGEROW_CURR_NENT_COUNT = 15;
	/** SESSION里面存放认证码 */
	public static final String SESSION_VERIFY_CODE = "SESSION_VERIFY_CODE";
	/** SESSION里面存放公共账号信息 */
	public static final String SESSION_WECHAT_BEAN = "SESSION_WECHAT_BEAN_";
	/** SESSION里面存放 用户信息 */
	public static final String SESSION_KEY_USER = "SESSION_KEY_USER";
	/** SESSION里面存放系统 用户信息 */
	public static final String SESSION_SYS_KEY_USER = "SESSION_SYS_KEY_USER";
	/** SESSION里面存放 用户信息 */
	public static final String SESSION_SYS_KEY_USER_PERMS = "SESSION_SYS_KEY_USER_PERMS";
	/** 路径分隔符 */
	public static final String PATH_SEPARATOR = "/";
	/** 系统默认编码 */
	public static final String DEFAULT_ENCODE = "UTF-8";
	/** 空字符串 */
	public static final String EMPTY_STRING = "";
	/** 空格 */
	public static final String BLANK_STRING = " ";
	/** 异常信息 */
	public static final String LOG_ERROR_TITLE = "异常信息";
}
