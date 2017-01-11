package controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import logic.MatchingService;
import logic.MatchingServiceImpl;
import logic.Member3;



@Controller

public class MatchingController {
	@Autowired
	private MatchingService matchingService;
	
	
	@RequestMapping("matching/matchingForm")
	public String getmatchingForm(){
		return "matching/matchingForm";
	}
	
	
	
	
}
