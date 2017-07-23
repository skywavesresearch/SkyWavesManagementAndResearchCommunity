package TrimaximumSoftware.trimaximum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import TrimaximumSoftware.trimaximum.model.Questions;
import TrimaximumSoftware.trimaximum.model.Words;
import TrimaximumSoftware.trimaximum.service.QuestionsService;
import TrimaximumSoftware.trimaximum.service.SecurityService;
import TrimaximumSoftware.trimaximum.service.WordsService;


@Controller
public class WordController {
	
	@Autowired
	private WordsService wordsService;
	
	@Autowired
    private SecurityService securityService;
	
	@RequestMapping(value = "/persistWords", method = RequestMethod.POST)
    public String persistQuestion(@ModelAttribute("wordsForm") Words wordsForm, BindingResult bindingResult, Model model) {
        
		boolean saveResult = wordsService.save(wordsForm);
		String returnRedirectStr = "wordsPersister";
		if(!saveResult) {
			model.addAttribute("failure", "Words Persistance Un-Successfull");
		}else {
			model.addAttribute("success", "Words Created and Persisted Successfully");
		}
		return returnRedirectStr;
    }
	
	@RequestMapping(value = "/createAndPersistWords", method = RequestMethod.GET)
    public String createQuestion(Model model) {
        
		return "wordsPersister";
    }
	
}
