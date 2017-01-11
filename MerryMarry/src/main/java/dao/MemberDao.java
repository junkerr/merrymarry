package dao;

import logic.Member3;

public interface MemberDao {	
	Member3 getMember3(String login_userid, String login_password);
	void create(Member3 member);
}
