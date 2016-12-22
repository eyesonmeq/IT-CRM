/**
 * Copyright (c) 2016, All Rights Reserved. 
 */
package com.angel.crm.dao;

import java.util.List;
import java.util.Map;

import com.angel.crm.model.User;

/**
 * 系统用户表操作类
 *
 * @date: 2016年12月19日 上午11:21:05
 * @author li_ming 
 */
public interface UserDao {
	/**
	 * 根据用户登录名获取系统用户对象
	 *
	 * @param loginName
	 * @return 
	 */
	public User getUserById(String loginName);

	/**
	 * 根据查询条件获取系统用户列表
	 *
	 * @param param
	 * @return 
	 */
	public List<User> getUserList(Map<String, Object> param);

	/**
	 * 添加系统用户
	 *
	 * @param user 
	 */
	public void addUser(User user);

	/**
	 * 更新系统用户
	 *
	 * @param user 
	 */
	public void updateUser(User user);

	/**
	 * 删除系统用户
	 *
	 * @param loginName 
	 */
	public void deleteUser(String loginName);
}
