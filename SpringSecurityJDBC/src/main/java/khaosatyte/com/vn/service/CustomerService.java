package khaosatyte.com.vn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import khaosatyte.com.vn.entities.User;
import khaosatyte.com.vn.dao.UserDAO;
@Service
@Transactional
public class CustomerService {

	@Autowired
	private UserDAO customerDAO;
	
	public List<User> findAll() {
		return customerDAO.findAll();
	}

	public User findById(int id) {
		return customerDAO.findById(id);
	}
	
	public void save(User customer){
		// validate business
		customerDAO.save(customer);
	}

	public void update(User customer){
		// validate business
		customerDAO.update(customer);
	}
	
	public void delete(int id){
		// validate business
		customerDAO.delete(id);
	}
}
