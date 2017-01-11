package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.MemberMapper;
import logic.Member3;
@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NS = "dao.mapper.MemberMapper.";
	@Override
	public Member3 getMember3(String login_userid, String login_password) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("login_userid", login_userid);
		param.put("login_password", login_password);
		return sqlSession.selectOne(NS + "getMember3", param);
	}
	@Override
	public void create(Member3 member) {
		sqlSession.getMapper(MemberMapper.class).create(member);
	}

}
