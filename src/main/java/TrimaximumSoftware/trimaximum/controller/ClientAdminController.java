package TrimaximumSoftware.trimaximum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import TrimaximumSoftware.trimaximum.model.Questions;
import TrimaximumSoftware.trimaximum.service.ClientAdminService;
import TrimaximumSoftware.trimaximum.service.InterviewExaminationService;
import TrimaximumSoftware.trimaximum.service.QuestionsService;

@Controller
public class ClientAdminController {
	
	@Autowired
	private ClientAdminService clientAdminService;
	
	@Autowired
	private  QuestionsService questionsService;
	
	@Autowired
	private  InterviewExaminationService interviewExaminationService;
	
	@RequestMapping(value = "/clientAdminLogin", method = RequestMethod.GET)
    public String clientAdminLogin(Model model) {
        /*if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");*/

        return "clientAdminLogin";
    }
	
	@RequestMapping(value = "/clientLogin", method = RequestMethod.GET)
    public String clientLogin(Model model) {
        /*if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");*/
		List<Questions> questionList = interviewExaminationService.getAllQuestion();
        return "clientAdmin";
    }
	
	@RequestMapping(value = "/getQuestionsForLevelAndTechnology", method = RequestMethod.POST)
    public String getQuestionsForLevelAndTechnology(@RequestParam("level") String level,@RequestParam("technology") String technology, ModelMap model) {
        /*if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");*/
		List<Questions> questionList = interviewExaminationService.getAllQuestionsForLevelAndTechnology(level, technology);
		model.addAttribute("QuestionsList", questionList);
		model.addAttribute("technology", technology);
        return "displayAllQuestions";
    }
	
}
