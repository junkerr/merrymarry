package dao;

import java.util.HashMap;
import java.util.List;

import logic.Member3;

public interface MatchingDao {

	List<Member3> getlist(HashMap<String,String> map);

	
	
}
