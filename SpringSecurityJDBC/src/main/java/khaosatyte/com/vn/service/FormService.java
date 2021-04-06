package khaosatyte.com.vn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import khaosatyte.com.vn.dao.FormDAO;

import khaosatyte.com.vn.entities.Form;


@Service
@Transactional
public class FormService {
	@Autowired
	private FormDAO formDAO;

	public List<Form> findAll() {
		return formDAO.findAll();
	}

	

	public Form findById(int loaikhaosat) {
		return formDAO.findById(loaikhaosat);
	}

	public void save(Form form) {
		// validate business
		formDAO.save(form);
	}

	public void update(Form form) {
		// validate business
		formDAO.update(form);
	}

	public void delete(int id) {
		// validate business
		formDAO.delete(id);
	}
}
