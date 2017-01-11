package dao;

import logic.Member3;

public interface MemberDao {	
	Member3 getMember3(String login_userid, String login_password);
	void create(Member3 member);
	Member3 getMember3(String find_birth, String find_email, String find_p_1, String find_p_2, String find_email_confirm);
}
