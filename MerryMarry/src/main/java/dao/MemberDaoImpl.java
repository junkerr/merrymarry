package dao;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
	/*	//암호화(해시함수)
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		byte[] plain = null;
		byte[] hash = null;
		String algo = "SHA-256";
		try {
			plain = br.readLine().getBytes();
		} catch (Exception e) {
			e.printStackTrace();
		}
		MessageDigest md;
		try {
			md = MessageDigest.getInstance(algo);
			hash = md.digest(plain);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}*/
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("login_userid", login_userid);
		param.put("login_password", login_password);
		return sqlSession.selectOne(NS + "getMember3", param);
	}
	@Override
	public void create(Member3 member) {
		sqlSession.getMapper(MemberMapper.class).create(member);
	}
	@Override
	public Member3 getMember3(String find_birth, String find_email, String find_p_1, String find_p_2, String find_email_confirm) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("find_birth", find_birth);
		param.put("find_email", find_email);
		param.put("find_p_1", find_p_1);
		param.put("find_p_2", find_p_2);
		param.put("find_email_confirm", find_email_confirm);
		return sqlSession.selectOne(NS + "getMember3", param);
	}

}
