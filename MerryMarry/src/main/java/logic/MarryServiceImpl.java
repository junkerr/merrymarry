package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;

@Service
public class MarryServiceImpl implements MarryService{
	@Autowired
	private MemberDao memberDao;
	@Override
	public Member3 getMemberByIdPw(Member3 member) {
		return memberDao.getMember3(member.getLogin_userid(), member.getLogin_password());
	}
	@Override
	public void createMember(Member3 member) {
		memberDao.create(member);
	}
	@Override
	public Member3 getMemberById(Member3 member) {
		return memberDao.getMember3(member.getFind_birth(), member.getFind_email(), member.getFind_p_1(), member.getFind_p_2(), member.getFind_email_confirm());
	}
}
