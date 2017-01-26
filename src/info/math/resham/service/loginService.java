package info.math.resham.service;

import java.util.HashMap;

import info.math.resham.dto.User;

public class loginService {
	HashMap<String, String> users = new HashMap<String, String>();
	
	public loginService(){
		users.put("resham", "Resham Khadka");
		users.put("admin", "Resham Khadka");
	}
	
	public boolean authenticate(String username, String password){
		if(password == null || password.trim() == ""){
			return false;
		}
		return true;
	}
	
	public User getUserDetails(String username){
		User user = new User();
		user.setFullName(users.get(username));
		user.setUsername(username); 
		return user;
	}
}
