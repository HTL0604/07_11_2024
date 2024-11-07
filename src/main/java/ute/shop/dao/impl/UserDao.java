package ute.shop.dao.impl;

import java.util.List;
import ute.shop.utils.*;

import ute.shop.config.JPAConfig;
import ute.shop.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;
import ute.shop.dao.IUserDao;

public class UserDao implements IUserDao {
	@Override
	public void insert(User user) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		String hashed_password = HashFunction.sha1Hash128(user.getHashed_password()) ;
		user.setHashed_password(hashed_password);
		try {
			trans.begin();
			enma.persist(user);
			trans.commit();
			} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
			}finally {
			enma.close();
		}
	}
	@Override
	public void update(User user) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();		
		try {
			trans.begin();
			enma.merge(user);
			trans.commit();
			} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
			}finally {
			enma.close();
		}
	}
	@Override
	public void delete(int userid) throws Exception {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			// goi phuong thức để insert, update, delete
			User user = enma.find(User.class, userid);
			if (user != null) {
				enma.remove(user);
			} else {
				throw new Exception("Khong tim thay");
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
	}
	
	public List<User> findAll() {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<User> query= enma.createNamedQuery("User.findAll", User.class) ;
		return query.getResultList();
	}
	@Override
	public User findbyEmail(String email) {
	    EntityManager enma = JPAConfig.getEntityManager();
	    String jpql = "SELECT u FROM User u WHERE u.email LIKE :email";
	    TypedQuery<User> query = enma.createQuery(jpql, User.class);
	    query.setParameter("email", "%" + email + "%");
	    // Use getResultList() to handle cases where no result is found
	    List<User> results = query.getResultList();
	    if (results.isEmpty()) {
	        return null; // No user found with the provided email
	    } else {
	        return results.get(0); // Return the first result if found
	    }
	}
	@Override
	public List<User> findAll(int page, int pagesize) {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<User> query= enma.createNamedQuery("User.findAll", User.class);
		query. setFirstResult(page*pagesize);
		query. setMaxResults (pagesize);
		return query.getResultList();
	}
	@Override
	public int count() {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT count(u) FROM User u";
		Query query = enma.createQuery(jpql);
		return ((Long)query.getSingleResult()).intValue();
	}

	@Override
	public boolean checkExistEmail(String email) {
		boolean check = false;
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT u FROM User u WHERE u.email like : email";
		TypedQuery<User> query= enma.createQuery(jpql, User.class);
		query.setParameter("email", "%" + email + "%") ;
		User user = null;		
		try {
	        user = query.getSingleResult();
	        check = (user != null);
	    } catch (NoResultException e) {
	        // Không có kết quả nào, nghĩa là email không tồn tại trong database
	        check = false;
	    }
	    return check;
	}
	@Override
	public boolean checkExistIdcard(String idcard) {
		boolean check = false;
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT u FROM User u WHERE u.id_card like : idcard";
		TypedQuery<User> query= enma.createQuery(jpql, User.class);
		query.setParameter("idcard", "%" + idcard + "%") ;
		User user = null;		
		try {
	        user = query.getSingleResult();
	        check = (user != null);
	    } catch (NoResultException e) {
	        // Không có kết quả nào, nghĩa là id_card không tồn tại trong database
	        check = false;
	    }
	    return check;
	}
}
