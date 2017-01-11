package logic;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Notice {
	private int no;
	private String writer;
	private String title;
	private String contents;
	private Date regDate;
	private String pic;
	public String getDateFormat() {
		SimpleDateFormat sf = 
				new SimpleDateFormat("yyyy-MM-dd");
		return sf.format(regDate);
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	
}
