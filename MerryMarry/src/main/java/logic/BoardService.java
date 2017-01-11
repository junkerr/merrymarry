package logic;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


public interface BoardService {

	List<Board> list(Integer pageNum, int limit, String column, String find);

	int boardCount(String column, String find);

	void readCntAdd(Integer num);

	Board detail(Integer num);

	void write(Board board, HttpServletRequest request);

	void reply(Board board);

	String getPassword(int num);

	void update(Board board, HttpServletRequest request);

}
