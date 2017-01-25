package info.math.resham.service;

public class loginService {
	public boolean authenticate(String username, String password){
		if(password == null || password.trim() == ""){
			return false;
		}
		return true;
	}
}
