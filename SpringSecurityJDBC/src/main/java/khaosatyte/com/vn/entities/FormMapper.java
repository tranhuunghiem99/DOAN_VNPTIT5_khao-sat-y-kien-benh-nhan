package khaosatyte.com.vn.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class FormMapper  implements RowMapper<Form> {

	public Form mapRow(ResultSet rs, int rowNum) throws SQLException {
		Form form = new Form();
		//form.setId(rs.getInt("id"));
		form.setLoaikhaosat(rs.getInt("loaikhaosat"));
		form.setCautraloi(rs.getInt("cautraloi"));
		form.setMabh(rs.getString("mabh"));
		form.setNgay(rs.getString("ngay"));
		form.setTenbenhnhan(rs.getString("tenbenhnhan"));
		form.setTenbenhvien(rs.getString("tenbenhvien"));
		return form;
	}

}
