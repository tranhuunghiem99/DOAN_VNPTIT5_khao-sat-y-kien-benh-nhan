package khaosatyte.com.vn.entities;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

public class SurveyMapperkq implements RowMapper<Survey>{

	

	public Survey mapRow(ResultSet rs, int rowNum) throws SQLException {
		Survey kq = new Survey();

		//kq.setId(rs.getInt("id"));
		/*
		 * kq.setLoai(rs.getInt("loai")); kq.setId_kq(rs.getInt("id_kq"));
		 * kq.setLoaikhaosat(rs.getInt("loaikhaosat"));
		 * kq.setMaloai(rs.getInt("maloai")); kq.setQuestion(rs.getString("question"));
		 * kq.setName(rs.getString("name")); kq.setTimes(rs.getString("times"));
		 * kq.setTenbenhnhan(rs.getString("tenbenhnhan"));
		 * kq.setMabh(rs.getString("mabh"));
		 * kq.setTenbenhvien(rs.getString("tenbenhvien"));
		 * kq.setDapanradio(rs.getInt("dapanradio"));
		 * kq.setId_nguuoiks(rs.getInt("id_nguoiks"));
		 * kq.setMaloai_ks(rs.getInt("maloai_ks"));
		 */
		
		return kq;
		
	}

}
