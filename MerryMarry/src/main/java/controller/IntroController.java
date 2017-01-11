package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Deligator;
import logic.Notice;

@Controller
public class IntroController {
	
	@RequestMapping("intro/deligatorForm")
	public ModelAndView deligator() {
		Deligator deli = new Deligator();
		ModelAndView mav = new ModelAndView("intro/deligatorForm");
		mav.addObject("Deligator", deli);
		return mav;
	}
	
	@RequestMapping("board/noticeForm")
	public ModelAndView notice() {
		Notice noti = new Notice();
		ModelAndView mav = new ModelAndView("board/noticeForm");
		mav.addObject("Notice", noti);
		return mav;
	}
	
}
