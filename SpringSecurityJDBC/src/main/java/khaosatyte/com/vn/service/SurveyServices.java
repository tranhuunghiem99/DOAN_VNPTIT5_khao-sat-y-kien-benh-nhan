package khaosatyte.com.vn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import khaosatyte.com.vn.dao.SurveyDAO;
import khaosatyte.com.vn.entities.*;

@Service
@Transactional
public class SurveyServices {
	@Autowired
	private SurveyDAO surveyDAO;

	public List<Survey> findAll() {
		return surveyDAO.findAll();
	}
	public List<Survey> findAll2() {
		return surveyDAO.findAll2();
	}
	public List<Survey> findAll3() {
		return surveyDAO.findAll3();
	}
	

	public List<Survey> findAlls() {
		return surveyDAO.findAlls();
	}

	public Survey findById(int maloai) {
		return surveyDAO.findById(maloai);
	}

	public void save(Survey survey) {
		// validate business
		surveyDAO.save(survey);
	}

	public void update(Survey survey) {
		// validate business
		surveyDAO.update(survey);
	}

	public void delete(int maloai) {
		// validate business
		surveyDAO.delete(maloai);
	}
	public List<Survey> findKQKS() {
		
		return surveyDAO.findKQKS();
		
	}

}
