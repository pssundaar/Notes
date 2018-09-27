package com.restJpa.Springbootdemo.Controller;


import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.restJpa.Springbootdemo.loginRepo.loginRepo;
import com.restJpa.Springbootdemo.model.login;
import com.restJpa.Springbootdemo.model.notes;
import com.restJpa.Springbootdemo.notesRepo.notesRepo;

@Controller
@RequestMapping("/notes")
public class loginController {
	@Autowired
	loginRepo loginRepo;
	
	@Autowired
	notesRepo notesRepo;
	
	//private String message = "Hello World";

	
	 @GetMapping
	    String getView(Model model) {
	    
	        return "log/notesSignup";
	    }
	 
	 
	 @GetMapping(value="/hi")
	    String loginpage(Model model) {
	    
	        return "log/noteslogin";
	    }
	 @RequestMapping(value="/login", method=RequestMethod.POST)

	 public ModelAndView loginUser(@RequestParam("fname")String fname, @RequestParam("lname")String lname,
			 	@RequestParam("email")String email, @RequestParam("password")String password   ){
			
				login login= new login();
				login.setFirstName(fname);login.setLastName(lname);	login.setUserName(email);login.setPassword(password);
				loginRepo.save(login);
				ModelAndView	 model =  new ModelAndView("log/noteslogin");
				
				return model;
	
	 		}
	@RequestMapping(value = "/check" , method=RequestMethod.POST)
	 public ModelAndView oginCheck(@RequestParam("email")String email, @RequestParam("password")String password , HttpSession session,  Model model1   )
	{
		ModelAndView	 model ;
		session.setAttribute("email", email);
		String pass=null;
		String fNamee=null;
		String lName=null;
		System.out.println(password);
		List<login> list = loginRepo.findByUserName(email);
		for(login obj : list){
		pass=obj.getPassword();
		 
		fNamee=obj.getFirstName();
		lName=obj.getLastName();
		String fullName=fNamee+" "+lName;
		session.setAttribute("fullName", pass);
			}
		if(pass.equals(password)){
			 model =  new ModelAndView("log/dashboard");
			 String username=(String)session.getAttribute("email");
			 List<notes> notesobj=notesRepo.findAllByUsername(username);
			 model1.addAttribute("all",notesobj);
			 
			 
			return model;
		}
		model= new ModelAndView("log/error");
	
	return model;
	}
	
	@RequestMapping(value = "/dashboard"  , method=RequestMethod.POST)
	public ModelAndView gettitle(@RequestParam("title")String title , Model model   )
	{
		ModelAndView	 model1= new ModelAndView("log/dashboard");
		
		int noteid=0;
		String title1=null;
		String Descr=null;
		LocalDate createDate=null;
		LocalDate  updateDate=null;
		System.out.println(title);
		
		List<notes> list = notesRepo.findByTitle(title1);
		for(notes obj : list){
			noteid=obj.getNoteid();
			System.out.println(noteid);
			 title1=obj.getTitle();
			 Descr=obj.getDescription();
			 createDate=obj.getCreated_date();
			 updateDate=obj.getUpdated_date();
			
			}
		
		List<notes> notesobj=notesRepo.findByTitle(title);
		System.out.println(notesobj);
		  model.addAttribute("job",notesobj);
	
	return model1;
	}
	@RequestMapping(value = "/createNewNotes" , method=RequestMethod.GET)
    String createMove(Model model) {
    
        return "log/create";
    }
	@RequestMapping(value = "/notesSave"  , method=RequestMethod.POST)
	public ModelAndView notesSave(@RequestParam("title")String title ,@RequestParam("description")String description , Model model ,HttpSession session  )
	
	
	{
		ModelAndView	 model1= new ModelAndView("log/dashboard");
		LocalDate today = LocalDate.now();
		notes notes= new notes();
		notes.setTitle(title);
		notes.setDescription(description);
		notes.setCreated_date(today);
		String username=(String)session.getAttribute("email");
		notes.setUsername(username);
		
		notesRepo.save(notes);
        return model1;
    }
	@RequestMapping(value = "/all"  , method=RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request,
			HttpServletResponse response, Model model1 ){
		
		String id=request.getParameter("sapAdmin"+request.getParameter("sapHid"));
	//	System.out.println(id);
		Long idby=Long.parseLong(id);
		//Long idby=id;
		System.out.println(idby);
		List<notes> updaterec=notesRepo.findByidupdate(idby);
		model1.addAttribute("update",updaterec);
		
		ModelAndView	 model= new ModelAndView("log/update");
		return model;
		
	}
	/*@RequestMapping(value = "/update"  , method=RequestMethod.POST)
	public ModelAndView update(notes obj,@RequestParam("title")Long id,@RequestParam("title")String title ,@RequestParam("description")String description , Model model ,HttpSession session  )
	
	
	{
		Optional<notes> studentOptional = notesRepo.findById(id);

		

		LocalDate today = LocalDate.now();
		obj.setTitle(title);
		obj.setDescription(description);
		obj.setUpdated_date(today);
		
		notesRepo.save(obj);

		return null;
		ModelAndView	 model1= new ModelAndView("log/dashboard");
		LocalDate today = LocalDate.now();
		notes notes= new notes();
		notes.setTitle(title);
		notes.setDescription(description);
		//notes.setCreated_date(today);
		
		notes.setUpdated_date(today);
		String username=(String)session.getAttribute("email");
		notes.setUsername(username);
		
		notesRepo.update(title, description, id);
        return model1;
    }
	*/
}

	
	

