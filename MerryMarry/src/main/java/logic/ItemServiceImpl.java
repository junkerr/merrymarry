package logic;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.ItemDao;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Autowired
	private ItemDao dao;
	public List<Item> getItemList() {
		return dao.findAll();
	}
	public Item getItemList(Integer id) {
		return dao.itemById(id);
	}
	public void entryItem(Item item, HttpServletRequest request) {
		if(item.getPicture() != null &&
				!item.getPicture().isEmpty()) {
			uploadFileCreate(item.getPicture(), request);
			item.setPictureUrl(item.getPicture().getOriginalFilename());
		}
		dao.create(item);
	}
	private void uploadFileCreate
			(MultipartFile picture, HttpServletRequest request) {
		String uploadPath =
				request.getServletContext().getRealPath("/")
					+ "/img/";
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream
					(uploadPath + picture.getOriginalFilename());
			InputStream in = picture.getInputStream();
			byte[] buf = new byte[4096];
			int len;
			while((len = in.read(buf)) != -1) {
				fos.write(buf,0,len);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(fos != null) {
					fos.flush(); fos.close();
				}
			} catch (IOException e) {}
		}
	}
	public void update(Item item, HttpServletRequest request) {
		if(item.getPicture() != null &&
				!item.getPicture().isEmpty()) {
			uploadFileCreate(item.getPicture(), request);
			item.setPictureUrl
					(item.getPicture().getOriginalFilename());
		}
		dao.update(item);
	}
	public void delete(Integer id) {
		dao.delete(id);
	}
	
}
