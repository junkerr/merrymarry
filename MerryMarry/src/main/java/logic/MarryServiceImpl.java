package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;

@Service
public class MarryServiceImpl implements MarryService{
	@Autowired
	private MemberDao memberDao;
	/*@Override
	public Member3 getMemberByIdPw(Member3 member) {
		return memberDao.getMember3(member.getLogin_userid(), member.getLogin_password());
	}*/
	@Override
	public void createMember(Member3 member) {
		memberDao.create(member);
	}
	@Override
	public Member3 getMemberByIdPw(String login_userid, String login_password) {
		return memberDao.getMember3(login_userid, login_password);
	}
}
