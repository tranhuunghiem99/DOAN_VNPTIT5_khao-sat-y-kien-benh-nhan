package khaosatyte.com.vn.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SurveyMapper implements RowMapper<Survey> {

	public Survey mapRow(ResultSet rs, int rowNum) throws SQLException {
		Survey survey = new Survey();

		survey.setId(rs.getInt("id"));
		survey.setLoai(rs.getInt("loai"));
		survey.setMaloai(rs.getInt("maloai"));
		survey.setQuestion(rs.getString("question"));
		survey.setName(rs.getString("name"));
		survey.setTimes(rs.getString("times"));
//		survey.setTenbenhnhan(rs.getString("tenbenhnhan"));
//		survey.setMabh(rs.getString("mabh"));
//		survey.setTenbenhvien(rs.getString("tenbenhvien"));
//		survey.setDapanradio(rs.getInt("dapanradio"));
		return survey;
	}

}
