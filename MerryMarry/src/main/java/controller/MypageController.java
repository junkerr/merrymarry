package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypageController {

	@RequestMapping("mypage/mainForm")
	public ModelAndView mainForm(){
		ModelAndView mav = new ModelAndView("mypage/mainForm");
		return mav;
	}
	
	@RequestMapping("mypage/infoForm")
	public ModelAndView infoForm(){
		ModelAndView mav = new ModelAndView("mypage/infoForm");
		return mav;
	}
	
	@RequestMapping("mypage/infoUpdateForm")
	public ModelAndView updateForm(){
		ModelAndView mav = new ModelAndView("mypage/infoUpdateForm");
		return mav;
	}
	
	@RequestMapping("mypage/deleteMemForm")
	public ModelAndView deleteForm() {
		ModelAndView mav = new ModelAndView("mypage/deleteMemForm");
		return mav;
	}
	
	@RequestMapping("mypage/exInfoForm")
	public ModelAndView exInfoForm() {
		ModelAndView mav = new ModelAndView("mypage/exInfoForm");
		return mav;
	}
	
	@RequestMapping("mypage/pointForm")
	public ModelAndView pointForm() {
		ModelAndView mav = new ModelAndView("mypage/pointForm");
		return mav;
	}
	
	@RequestMapping("mypage/couponForm")
	public ModelAndView couponForm() {
		ModelAndView mav = new ModelAndView("mypage/couponForm");
		return mav;
	}
}
