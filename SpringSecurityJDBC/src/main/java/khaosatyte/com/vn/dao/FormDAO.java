package khaosatyte.com.vn.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import khaosatyte.com.vn.entities.Form;
import khaosatyte.com.vn.entities.FormMapper;

@Repository
@Transactional
public class FormDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;



	public void save(Form form) {
		String sql = "INSERT INTO ketquakhaosat (tenbenhnhan, mabh,tenbenhvien,ngay,loaikhaosat,cautraloi) VALUES (?,?, ?, ?,?, ?)";
		jdbcTemplate.update(sql, form.getTenbenhnhan(),form.getMabh(),form.getTenbenhvien(),form.getNgay(),form.getLoaikhaosat(),form.getCautraloi());
		
	}
	
	public void delete(int id_kq) {
		String sql = "DELETE FROM ketquakhaosat WHERE id_kq = " + id_kq;
		jdbcTemplate.update(sql);
		
	}

	public List<Form> findAll() {
		String sql = "SELECT * FROM ketquakhaosat";
		return jdbcTemplate.query(sql, new FormMapper());
	}

	public Form findById(int id_kq) {
		String sql = "SELECT * FROM ketquakhaosat WHERE id_kq = ?";
		return jdbcTemplate.queryForObject(sql, new FormMapper(), id_kq);
		
	}
	public void update(Form form) {
		String sql = "UPDATE ketquakhaosat SET tenbenhnhan = ?, mabh = ?, tenbenhvien = ?,ngay=?,loaikhaosat=? ,cautraloi=? WHERE id_kq = ? ";
		jdbcTemplate.update(sql, form.getTenbenhnhan(),form.getMabh(),form.getTenbenhvien(),form.getNgay(),form.getLoaikhaosat(), form.getId());
		
	}

}
