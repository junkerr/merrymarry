package logic;

public interface MarryService {
	/*Member3 getMemberByIdPw(Member3 member);*/
	void createMember(Member3 member);
	Member3 getMemberByIdPw(String login_userid, String login_password);
}
