package khaosatyte.com.vn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import khaosatyte.com.vn.entities.User;
import khaosatyte.com.vn.entities.Form;
import khaosatyte.com.vn.entities.Question;
import khaosatyte.com.vn.entities.Survey;
import khaosatyte.com.vn.service.CustomerService;
import khaosatyte.com.vn.service.FormService;
import khaosatyte.com.vn.service.QuestionService;
import khaosatyte.com.vn.service.SurveyServices;

@Controller
public class BaseController {

	@Autowired
	private CustomerService customerService;
	@Autowired
	private FormService formService;
	@Autowired
	private QuestionService questionService;// tao private question link
	@Autowired
	private SurveyServices surveyServices;// tao private survey link
//index*****************************************************************************

	@RequestMapping(value = { "/index", "/" })
	public String login(@RequestParam(value = "error", required = false) final String error, final Model model) {
		model.addAttribute("listsurveys", surveyServices.findAlls());
		if (error != null) {
			model.addAttribute("message", "Đăng nhập thát bại");
		}

		return "index";
	}

	// admin*****************************************************************************
	@RequestMapping("/admin")
	/* , produces="application/x-www-form-urlencoded;charset=UTF-8" */
	public String admin(Model model) {
		model.addAttribute("listuser", customerService.findAll());
		model.addAttribute("listquestion", questionService.findAll());
		model.addAttribute("listsurveys", surveyServices.findAlls());
		model.addAttribute("listks", formService.findAll());
		// model.addAttribute("listsurvey",surveyServices.findAll());

		model.addAttribute("listkq", surveyServices.findKQKS());
		return "admin/admin";
	}

	@RequestMapping("/user")
	public String user(Model model) {
		model.addAttribute("listquestion", questionService.findAll());
		model.addAttribute("listsurvey", surveyServices.findAll());
		// model.addAttribute("listkq", surveyServices.findKQKS());
		return "user/user";
	}

	@RequestMapping("/logout")
	public String logout(final Model model) {
		model.addAttribute("message", "Đăng Xuất!");
		return "index";
	}

	@RequestMapping("/Khaosat-form")
	public String form(Model model) {
		model.addAttribute("listquestion", questionService.findAll());
		model.addAttribute("listsurvey", surveyServices.findAll());
		model.addAttribute("listform", formService.findAll());
		model.addAttribute("form", new Form());
		return "layoutindex/form/Khaosat-form";
	}

	@RequestMapping("/saveForm")
	public String doSaveForm(@ModelAttribute("form") Form form, Model model) {
		formService.save(form);
		model.addAttribute("listform", formService.findAll());
		return "index";
	}

	@RequestMapping(value = "/user-save", produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String insertCustomer(Model model) {
		model.addAttribute("user", new User());
		return "account/user-save";
	}

	@RequestMapping("/user-view/{id}")
	public String viewCustomer(@PathVariable int id, Model model) {
		User customer = customerService.findById(id);
		model.addAttribute("user", customer);
		return "account/user-view";
	}

	@RequestMapping("/DSKSloai-view/{maloai}")
	public String viewDSKS(@PathVariable int maloai, Model model) {
		Survey survey = surveyServices.findById(maloai);
		if (survey.getMaloai() == 1) {
			model.addAttribute("listsurvey", surveyServices.findAll());
		} else if (survey.getMaloai() == 2) {
			model.addAttribute("listsurvey", surveyServices.findAll2());
		} else {
			model.addAttribute("listsurvey", surveyServices.findAll3());
		}
		model.addAttribute("survey", survey);
		return "survey/DSKSloai-view";
	}
	/*
	 * @RequestMapping("/cautraloi-view/{maloai}") public String
	 * viewDSKQ(@PathVariable int maloai, Model model) { Survey survey =
	 * surveyServices.findById(maloai); if (survey.getMaloai() == 1) {
	 * model.addAttribute("listsurvey", surveyServices.findKQKS()); }
	 * 
	 * else if (survey.getMaloai() == 2) { model.addAttribute("listsurvey",
	 * surveyServices.findAll2()); } else { model.addAttribute("listsurvey",
	 * surveyServices.findAll3()); }
	 * 
	 * model.addAttribute("survey", survey); return "survey/cautraloi-view"; }
	 */

	@RequestMapping("/user-update/{id}")
	public String updateCustomer(@PathVariable int id, Model model) {
		User customer = customerService.findById(id);
		model.addAttribute("user", customer);
		return "account/user-update";
	}

	@RequestMapping("/saveuser")
	public String doSaveCustomer(@ModelAttribute("user") User customer, Model model) {
		customerService.save(customer);
		model.addAttribute("listuser", customerService.findAll());
		return "admin/admin";
	}

	@RequestMapping("/updateuser")
	public String doUpdateCustomer(@ModelAttribute("user") User customer, Model model) {
		customerService.update(customer);
		model.addAttribute("listuser", customerService.findAll());
		return "admin/admin";
	}

	@RequestMapping("/userDelete/{id}")
	public String doDeleteCustomer(@PathVariable int id, Model model) {
		customerService.delete(id);
		model.addAttribute("listuser", customerService.findAll());
		return "admin/admin";
	}

	@RequestMapping("/question-save")
	public String insertQuestion(Model model) {
		model.addAttribute("question", new Question());
		return "question/question-save";
	}

	@RequestMapping("/savequestion")
	public String doSaveQuestion(@ModelAttribute("question") Question question, Model model) {
		questionService.save(question);
		model.addAttribute("listquestion", questionService.findAll());
		return "admin/admin";
	}

	@RequestMapping("/question-update/{id}")
	public String updateQuestion(@PathVariable int id, Model model) {
		Question question = questionService.findById(id);
		model.addAttribute("question", question);
		return "question/question-update";
	}

	@RequestMapping("/updatequestion")
	public String doUpdateQuestion(@ModelAttribute("question") Question question, Model model) {
		questionService.update(question);
		model.addAttribute("listquestion", questionService.findAll());
		return "admin/admin";
	}

	@RequestMapping("/questionDelete/{id}")
	public String doDeleteQuestion(@PathVariable int id, Model model) {
		questionService.delete(id);
		model.addAttribute("listquestion", questionService.findAll());
		return "admin/admin";
	}

	@RequestMapping("/savesurvey")
	public String doSaveCustomer(@ModelAttribute("survey") Survey survey, Model model) {
		surveyServices.save(survey);
		model.addAttribute("listsurveys", surveyServices.findAlls());
		return "admin/admin";
	}

	@RequestMapping(value = "/survey-save", produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String insertSurvey(Model model) {
		model.addAttribute("survey", new Survey());
		return "survey/survey-save";
	}

	@RequestMapping("/survey-update/{maloai}")
	public String updateSurvey(@PathVariable int maloai, Model model) {
		Survey survey = surveyServices.findById(maloai);
		model.addAttribute("surveys", survey);
		return "survey/survey-update";
	}

	@RequestMapping("/updatesurvey")
	public String doUpdateSurvey(@ModelAttribute("survey") Survey survey, Model model) {
		surveyServices.update(survey);
		model.addAttribute("listsurveys", surveyServices.findAlls());
		return "admin/admin";
	}

	@RequestMapping("/surveyDelete/{maloai}")
	public String doDeleteSurvey(@PathVariable int maloai, Model model) {
		surveyServices.delete(maloai);
		model.addAttribute("listsurveys", surveyServices.findAlls());
		return "admin/admin";
	}

}
