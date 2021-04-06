package khaosatyte.com.vn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import khaosatyte.com.vn.entities.Question;
import khaosatyte.com.vn.dao.QuestionDAO;

@Service
@Transactional
public class QuestionService {
	@Autowired
	private QuestionDAO questionDAO;
	
	public List<Question> findAll() {
		return questionDAO.findAll();
	}

	public Question findById(int id) {
		return questionDAO.findById(id);
	}
	
	public void save(Question question){
		// validate business
		questionDAO.save(question);
	}

	public void update(Question question){
		// validate business
		questionDAO.update(question);
	}
	
	public void delete(int id){
		// validate business
		questionDAO.delete(id);
	}
}
