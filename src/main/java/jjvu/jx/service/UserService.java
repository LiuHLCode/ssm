package jjvu.jx.service;

import jjvu.jx.domain.SysUser;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;
import java.util.Map;


public interface UserService extends UserDetailsService {
	public Map findUserByUsername(SysUser user);

	public List<SysUser> findAllUser();

	public Map addUser(SysUser user);

	public void deleteUser(Integer uid);

	public SysUser findUserById(Integer u_id);

	public Map editUser(SysUser user);
}
