package logic;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MatchingDao;

@Service
public class MatchingServiceImpl implements MatchingService {
	@Autowired
	MatchingDao matchingdao;
	
	//matching의 조건에 맞는 리스트를 가지고 오는 로직
	public List<Member3> getlist(HashMap<String, String> param) {
		//para
		List<Member3> list = matchingdao.getlist(param);
		
		return list;
		
	}

}
