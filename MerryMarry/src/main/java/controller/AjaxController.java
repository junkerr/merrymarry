package controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import logic.MatchingService;
import logic.Member3;

@RestController
public class AjaxController {
	@Autowired
	private MatchingService matchingService;
	
	@ResponseBody
	@RequestMapping("matching/matchinglist") //produces="text/plain;charset=UTF-8"
	public  List<Member3> getMatchingList(HttpServletRequest request) throws UnsupportedEncodingException{
		HashMap<String, String> map = new HashMap<String,String>();
		int sal;
		
		
		//값
		map.put("district",  URLDecoder.decode(request.getParameter("district"),"UTF-8"));
		System.out.println(map.get("district"));
		map.put("job", URLDecoder.decode(request.getParameter("job"),"UTF-8"));
		//sal관련 
		map.put("salary", URLDecoder.decode(request.getParameter("salary"),"UTF-8"));
		map.put("height", URLDecoder.decode(request.getParameter("height"),"UTF-8"));
		map.put("weight", URLDecoder.decode(request.getParameter("weight"),"UTF-8"));
		map.put("religion", URLDecoder.decode(request.getParameter("religion"),"UTF-8"));
		System.out.println(map);
				
		
		List<Member3> list =  matchingService.getlist(map);
		System.out.println(list);
		return list;
	}
	
}
