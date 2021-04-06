package khaosatyte.com.vn.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import khaosatyte.com.vn.entities.Question;
import khaosatyte.com.vn.entities.QuestionMapper;

@Repository
@Transactional
public class QuestionDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Question question) {
		String sql = "INSERT INTO questions(question,loai) VALUES (?, ?)";
		jdbcTemplate.update(sql, question.getQuestion(), question.getLoai());
	}

	public void delete(int id) {
		String sql = "DELETE FROM questions WHERE id = " + id;
		jdbcTemplate.update(sql);
	}

	public void update(Question question) {
		String sql = "UPDATE questions SET question = ?, loai = ? WHERE id = ? ";
		jdbcTemplate.update(sql, question.getQuestion(), question.getLoai(), question.getId());
	}

	public Question findById(int id) {
		String sql = "SELECT * FROM questions WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new QuestionMapper(), id);
	}

	public List<Question> findAll() {
		String sql = "SELECT questions.id, questions.question,questions.loai, survey.maloai,survey.name FROM questions INNER JOIN survey ON questions.loai = survey.maloai";
		return jdbcTemplate.query(sql, new QuestionMapper());
	}
}
