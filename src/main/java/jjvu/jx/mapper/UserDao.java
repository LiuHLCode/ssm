package jjvu.jx.mapper;

import jjvu.jx.domain.SysUser;

import java.util.List;



public interface UserDao {
	public SysUser findUserByUsername(String username);

	public List<SysUser> findAllUser();

	public void addUser(SysUser user);

	public void deleteUser(Integer uid);

	public SysUser findUserById(Integer u_id);

	public SysUser findUserByName(SysUser user);

	public void editUser(SysUser user);

	SysUser findByName(String username);
}
