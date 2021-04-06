package khaosatyte.com.vn.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import khaosatyte.com.vn.entities.User;
import khaosatyte.com.vn.entities.UserMapper;


@Repository
@Transactional
public class UserDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(User customer) {
		String sql = "INSERT INTO users (name, address,phone,email,age,username,password,role,enabled) VALUES (?,?,?,?, ?, ?,?, ?,?)";
		jdbcTemplate.update(sql, customer.getName(), customer.getAddress(),customer.getPhone(),customer.getEmail(),customer.getAge(),customer.getUsername(),customer.getPassword(),customer.getRole(),customer.getEnabled());
	}

	public void delete(int id) {
		String sql = "DELETE FROM users WHERE id = " + id;
		jdbcTemplate.update(sql);
	}
	
	public void update(User customer) {
		String sql = "UPDATE users SET name = ?, address = ?, phone = ?,age=?,email=?,username=?,password=?, role=?,enabled=? WHERE id = ? ";
		jdbcTemplate.update(sql, customer.getName(), customer.getAddress(), customer.getPhone(),customer.getAge(),customer.getEmail(),customer.getUsername(),customer.getPassword(),customer.getRole(),customer.getEnabled(), customer.getId());
	}

	public User findById(int id) {
		String sql = "SELECT * FROM users WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new UserMapper(), id);
	}

	public List<User> findAll() {
		String sql = "SELECT * FROM users";
		return jdbcTemplate.query(sql, new UserMapper());
	}

}
