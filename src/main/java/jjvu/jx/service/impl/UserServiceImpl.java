package jjvu.jx.service.impl;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jjvu.jx.domain.SysRole;
import jjvu.jx.domain.SysUser;
import jjvu.jx.mapper.UserDao;
import jjvu.jx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service

public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Override
	public Map findUserByUsername(SysUser user) {
		SysUser user1 = userDao.findUserByUsername(user.getUsername());//数据库的值
		Map map = new HashMap();
		if(user1 == null)
		{
			map.put("username", "账号出错");
		}
		else
		{
			if(user.getPassword().equals(user1.getPassword()))
			{
				return null;
			}
			else
			{
				map.put("password", "密码错误");
			}
		}
		return map;
	}
	@Override
	public List<SysUser> findAllUser() {
		return userDao.findAllUser();
	}
	@Override
	public Map addUser(SysUser user) {
		SysUser user1 = userDao.findUserByUsername(user.getUsername());//数据库的值
		Map map = new HashMap();
		if(user1 != null) {
			map.put("msg", "账号已存在");
		}else {
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			userDao.addUser(user);
		}
		return map;
	}
	@Override
	public void deleteUser(Integer uid) {
		userDao.deleteUser(uid);
	}
	@Override
	public SysUser findUserById(Integer u_id) {
		return userDao.findUserById(u_id);
	}
	@Override
	public Map editUser(SysUser user) {
		Map map =  new HashMap();
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		SysUser user1 = userDao.findUserByName(user);
		if (user1 != null) {
			map.put("msg", "账号已经存在");
		}else{
			userDao.editUser(user);
			map = null;
		}
		return map;
	}

	@Override
	public UserDetails loadUserByUsername(String username)  {
		SysUser sysUser = userDao.findByName(username);
		if (sysUser==null){
			return null;
		}
		List<SimpleGrantedAuthority> authorities = new ArrayList<>();
		List<SysRole> roles = sysUser.getRoles();
		for (SysRole role : roles) {
			authorities.add(new SimpleGrantedAuthority(role.getRole_name()));
		}
//最终需要返回一个 SpringSecurity 的 UserDetails 对象，{noop}表示不加密认证。
		return new User(sysUser.getUsername(),
				sysUser.getPassword(),
				sysUser.getStatus()==1,
				true,
				true,
				true,
				authorities);
	}

}
