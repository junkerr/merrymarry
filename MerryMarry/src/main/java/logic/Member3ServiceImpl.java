package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.Member3Dao;

@Service
public class Member3ServiceImpl implements Member3Service{

	@Autowired
	private Member3Dao member3Dao;
	
}
