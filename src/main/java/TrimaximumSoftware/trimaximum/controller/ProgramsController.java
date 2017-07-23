package TrimaximumSoftware.trimaximum.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import TrimaximumSoftware.trimaximum.model.Programs;
import TrimaximumSoftware.trimaximum.service.ProgramsService;


@Controller
public class ProgramsController {
	
	@Autowired
    private ProgramsService programsService;
	
	@RequestMapping(value = "/persistPrograms", method = RequestMethod.POST)
    public ModelAndView persistPrograms(@ModelAttribute("programsForm") Programs programsForm, BindingResult bindingResult, Model model) {
		Object[] compileResult = compileProgram(programsForm,model);
		String returnRedirectStr = "displayProgram";
		if(compileResult != null && compileResult[0] != null && !"Error".equals((String)compileResult[0])) {
				boolean saveResult = programsService.save(programsForm);
				model.addAttribute("program",programsForm.getProgram());
				model.addAttribute("programName",programsForm.getProgramName());
				Object[] runResult = runProgram((File)compileResult[2]);
				model.addAttribute("result",(String)compileResult[0]);
				model.addAttribute("resultString",runResult[1]);
			}else {
				model.addAttribute("result",(String)compileResult[0]);
				model.addAttribute("resultString",(String)compileResult[1]);
			}
		return new ModelAndView(returnRedirectStr,model.asMap());
    }
	
	@RequestMapping(value = "/displayAllPrograms", method = RequestMethod.POST)
    public String displayAllPrograms(Model model) {
        
		
		return "displayAllPrograms";
    }
	
	@RequestMapping(value = "/createPrograms", method = RequestMethod.GET)
    public String createPrograms(Model model) {
        
		return "createPrograms";
    }
	
	public Object[] compileProgram(Programs programsForm, Model model) {
		Object[] result = new Object[3];
		try {
			File file = null;
	        file = new File("D:\\Files\\"+programsForm.getProgramName()+".java");
	        try{
	            if (!file.exists()) {
					file.createNewFile();
				}
	            String content = programsForm.getProgram();
	 
	            FileWriter fw = new FileWriter(file.getAbsoluteFile());
				BufferedWriter bw = new BufferedWriter(fw);
				bw.write(content);
				bw.close();
	 
	        }catch(IOException e){
	            e.printStackTrace();
	        }/*finally{
	            try{
	            	bw.close();
	            }catch(IOException ioe){
	                ioe.printStackTrace();
	            }
	        }*/
	        Object[] resultOutput = runProcess("javac \""+file.getAbsolutePath()+"\"");
	        result[0] = resultOutput[0];
	        result[1] = resultOutput[1];
	        result[2] = file;
			model.addAttribute("resultOutput", resultOutput);
		} catch (Exception e) {
		      e.printStackTrace();
		}
		
		
		return result;
    }
	
	public Object[] runProgram(File file) {
		Object[] resultOutput = null;
		try {
			resultOutput =  runProcess("java -classpath D:\\Files\\ "+file.getName().substring(0, file.getName().length() - 5));
		} catch (Exception e) {
		      e.printStackTrace();
		}
		if(file.exists()) {
			file.delete();
		}
		return resultOutput;
    }
	
    
    
    
	
	 private static Object[] runProcess(String command) throws Exception {
		 Object[] result = new String[2];
		    Process pro = Runtime.getRuntime().exec(command);
		    String runOutput = returnLines(pro.getInputStream());
		    String errorOutput = returnLines(pro.getErrorStream());
		    if(errorOutput != null && !"".equals(errorOutput)) {
		    	result[0] = "Error";
		    	result[1] = errorOutput;
		    }else {
		    	result[0] = "Success";
		    	result[1] = runOutput;
		    }
		    pro.waitFor();
		    System.out.println(command + " exitValue() " + pro.exitValue());
		    return result;
		  
	 }
	 
	 private static String returnLines(InputStream ins) throws Exception {
		    String line = null;
		    BufferedReader in = new BufferedReader(
		        new InputStreamReader(ins));
		    StringBuffer result = new StringBuffer("");
		    while ((line = in.readLine()) != null) {
		    	result.append(line);
		    }
		  return result.toString();
	 }
	 
}
