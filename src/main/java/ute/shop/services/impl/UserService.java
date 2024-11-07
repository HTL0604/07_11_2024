package ute.shop.services.impl;

import ute.shop.services.IUserService;
import ute.shop.utils.HashFunction;
import ute.shop.dao.IUserDao;
import ute.shop.dao.impl.UserDao;
import ute.shop.entity.User;

public class UserService implements IUserService {
	// lấy toàn bộ hàm trong tầng DAO của user
	IUserDao userDao = new UserDao();
	@Override
	public User login(String email, String password) {
		String hashed_password = HashFunction.sha1Hash128(password);
		User user = this.findbyEmail(email);
		if (user != null && hashed_password.equals(user.getHashed_password())) {
			return user;
		}
		return null;
	}

	@Override
	public User findbyEmail(String username) {
		return userDao.findbyEmail(username);
	}
	@Override
	public boolean register(String firstname, String lastname, String email, String hashed_password, String phone, String idcard ) {
	if (userDao.checkExistEmail(email)) {
	return false;
	}
	long millis=System.currentTimeMillis(); 
	java.sql.Date date=new java.sql.Date(millis);
	String salt = "RANDOM";
	userDao.insert(new User(firstname,lastname, email,hashed_password ,phone, idcard, salt));
	return true;
	}
	public boolean checkExistEmail(String email) {
		return userDao.checkExistEmail(email);
	}
	@Override
	public void insert(User user) {
	userDao.insert(user);
	}
	public User findPassword(String email, String password) {
		User user = userDao.findbyEmail(email);
		return user;
	}
	public boolean checkExistIdcard(String idcard) {
		return userDao.checkExistIdcard(idcard);
	}
}
