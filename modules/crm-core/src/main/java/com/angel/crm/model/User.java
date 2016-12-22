/**
 * Copyright (c) 2016, All Rights Reserved. 
 */
package com.angel.crm.model;

/**
 * 系统用户对象
 *
 * @date: 2016年12月19日 上午11:28:49
 * @author li_ming 
 */
public class User {
	// 用户登录名
	private String loginName;
	// 用户名称
	private String name;
	// 登录密码
	private String password;
	// 用户的组织机构编码
	private String orgCode;
	// 用户是否可以登录
	private boolean enabled;
	// 身份证号
	private String id_card_number;
	// 联系电话
	private String tel;
	// 住址
	private String address;

	/**
	 * Creates a new instance of User. 
	 * 
	 */
	public User() {}

	/**
	 * @return the loginName
	 */
	public String getLoginName() {
		return loginName;
	}

	/**
	 * @param loginName the loginName to set
	 */
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the orgCode
	 */
	public String getOrgCode() {
		return orgCode;
	}

	/**
	 * @param orgCode the orgCode to set
	 */
	public void setOrgCode(String orgCode) {
		this.orgCode = orgCode;
	}

	/**
	 * @return the enabled
	 */
	public boolean isEnabled() {
		return enabled;
	}

	/**
	 * @param enabled the enabled to set
	 */
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	/**
	 * @return the id_card_number
	 */
	public String getId_card_number() {
		return id_card_number;
	}

	/**
	 * @param id_card_number the id_card_number to set
	 */
	public void setId_card_number(String id_card_number) {
		this.id_card_number = id_card_number;
	}

	/**
	 * @return the tel
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * @param tel the tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
}
