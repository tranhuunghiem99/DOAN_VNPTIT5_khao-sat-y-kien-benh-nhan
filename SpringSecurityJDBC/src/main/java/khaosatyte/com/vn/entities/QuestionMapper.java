package khaosatyte.com.vn.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class QuestionMapper implements RowMapper<Question>{

	public Question mapRow(ResultSet rs, int rowNum) throws SQLException {
		Question question =new Question();
		question.setId(rs.getInt("id"));
		question.setLoai(rs.getInt("loai"));
		//question.setMaloai(rs.getInt("maloai"));
		question.setQuestion(rs.getString("question"));
		//question.setName(rs.getString("name"));
		return question;
	}

}
