package dao.mapper;

import org.apache.ibatis.annotations.Insert;

import logic.Member3;

public interface MemberMapper {
	@Insert("insert into member3 (userid, password, name, f_phone, m_phone, l_phone, birth, email, gender, p_1, p_2,status,statusdate) "
		  + " values (#{userid}, #{password}, #{name}, #{f_phone}, #{m_phone}, #{l_phone}, #{birth}, #{email}, #{gender}, #{p_1}, #{p_2},'승인 대기', sysdate ) ")
	void create(Member3 member);
}
