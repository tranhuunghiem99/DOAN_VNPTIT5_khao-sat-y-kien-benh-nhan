package khaosatyte.com.vn.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import khaosatyte.com.vn.entities.Survey;
import khaosatyte.com.vn.entities.SurveyMapper;
import khaosatyte.com.vn.entities.SurveyMapperkq;
import khaosatyte.com.vn.entities.SurveyMappers;

@Repository
@Transactional
public class SurveyDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Survey survey) {
		String sql = "INSERT INTO survey (name,times) VALUES (?,?)";
		jdbcTemplate.update(sql, survey.getName(), survey.getTimes());
	}

	public void delete(int maloai) {
		String sql = "DELETE FROM survey WHERE maloai = " + maloai;
		jdbcTemplate.update(sql);
	}

	public void update(Survey survey) {
		String sql = "UPDATE survey SET name = ? WHERE maloai = ? ";
		jdbcTemplate.update(sql, survey.getName(), survey.getMaloai());
	}

	public Survey findById(int maloai) {
		String sql = "SELECT * FROM survey WHERE maloai = ?";
		return jdbcTemplate.queryForObject(sql, new SurveyMappers(), maloai);
	}

	public List<Survey> findAll() {
		// String sql="SELECT *FROM survey";
		
	String sql = "SELECT questions.id, questions.question,questions.loai, survey.maloai,survey.name,survey.times FROM questions INNER JOIN survey ON questions.loai = survey.maloai WHERE maloai= 1";
		return jdbcTemplate.query(sql, new SurveyMapper());
	}
	public List<Survey> findAll2() {
		// String sql="SELECT *FROM survey";
	String sql = "SELECT questions.id, questions.question,questions.loai, survey.maloai,survey.name,survey.times FROM questions INNER JOIN survey ON questions.loai = survey.maloai WHERE maloai=2";
		return jdbcTemplate.query(sql, new SurveyMappers());
	}
	public List<Survey> findAll3() {
		// String sql="SELECT *FROM survey";
	String sql = "SELECT questions.id, questions.question,questions.loai, survey.maloai,survey.name,survey.times FROM questions INNER JOIN survey ON questions.loai = survey.maloai WHERE maloai=3";
		return jdbcTemplate.query(sql, new SurveyMappers());
	}

	public List<Survey> findAlls() {
		String sql = "SELECT * FROM survey"; // String
		//sql = "SELECT questions.id, questions.question,questions.loai, survey.maloai,survey.name,survey.times FROM questions INNER JOIN survey ON questions.loai = survey.maloai";
		return jdbcTemplate.query(sql, new SurveyMappers());
	}

	public List<Survey> findKQKS() {
		String sql="SELECT ketquakhaosat.tenbenhnhan,ketquakhaosat.mabh,ketquakhaosat.tenbenhvien,survey.name,questions.question,cautraloi.dapanradio FROM ketquakhaosat,cautraloi,questions,survey WHERE ketquakhaosat.id_kq= cautraloi.id_nguoiks AND ketquakhaosat.loaikhaosat=survey.maloai AND questions.loai=survey.maloai AND cautraloi.maloai_ks=survey.maloai";
		return jdbcTemplate.query(sql, new SurveyMapperkq());
	}
	

}
