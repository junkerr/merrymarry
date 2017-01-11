package controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.MarryService;
import logic.Member3;

@Controller
public class EntranceController {
	@Autowired
	private MarryService marryService;
	@RequestMapping("main/entranceForm") 
	public ModelAndView entranceForm() {
		Member3 member = new Member3();
		ModelAndView mav = new ModelAndView("main/entranceForm");
		mav.addObject("member3", member);
		return mav;
	}
	
	//회원가입
	@RequestMapping("main/mainForm")
	public ModelAndView memberEntry(@Valid Member3 member, BindingResult bindingResult) {
		ModelAndView mav = new ModelAndView();
		if(bindingResult.hasErrors()) {
			bindingResult.reject("error.input.member");
			mav.getModel().putAll(bindingResult.getModel());
			return mav;
		}
		try {
			marryService.createMember(member);
		} catch(DuplicateKeyException e) {
			bindingResult.reject("error.duplicate.member");
			return mav;
		}
		mav.addObject("member", member);
		return mav;
	}
	
	//로그인
	@RequestMapping("main/login")
	public ModelAndView login(@Valid Member3 member, BindingResult bindingResult, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(bindingResult.hasErrors()) {
			mav.getModel().putAll(bindingResult.getModel());
			return mav;
		}
		Member3 loginMember = marryService.getMemberByIdPw(member);
		if(loginMember == null) {
			bindingResult.reject("error.login.id");
			mav.getModel().putAll(bindingResult.getModel());
			return mav;
		}
		session.setAttribute("MEMBER", loginMember);
		mav.setViewName("main/mainForm");
		mav.addObject("member", loginMember);
		return mav;
	}
	
	//ID 찾기
	@RequestMapping("main/findidForm")
	public ModelAndView findidForm(@Valid Member3 member, BindingResult bindingResult) {
		ModelAndView mav = new ModelAndView();
		if(bindingResult.hasErrors()) {
			mav.getModel().putAll(bindingResult.getModel());
			return mav;
		}
		Member3 findId = marryService.getMemberById(member);
		if(findId == null) {
			bindingResult.reject("error.find.id");
			mav.getModel().putAll(bindingResult.getModel());
			return mav;
		}
		mav.setViewName("main/entranceForm");
		mav.addObject("member", findId);
		return mav;
	}
}
