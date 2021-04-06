package khaosatyte.com.vn.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SurveyMappers implements RowMapper<Survey> {

	public Survey mapRow(ResultSet rs, int rowNum) throws SQLException {
		Survey surveys = new Survey();

		
		surveys.setMaloai(rs.getInt("maloai"));
		
		surveys.setName(rs.getString("name"));
		surveys.setTimes(rs.getString("times"));
//		surveys.setQuestion(rs.getString("question"));
//		surveys.setName(rs.getString("name"));
//		surveys.setTimes(rs.getString("times"));
		return surveys;
	}

}
