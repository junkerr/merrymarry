package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import logic.Member3;

@Repository
public class MatchingDaoImpl implements MatchingDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NS = "dao.mapper.MatchingMapper.";

	public List<Member3> getlist(HashMap<String,String> map) {
		
		return sqlSession.selectList(NS+"getlist", map);
		
		
	}

}
