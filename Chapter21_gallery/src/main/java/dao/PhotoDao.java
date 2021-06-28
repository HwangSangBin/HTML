package dao;

import servlet.List;
import vo.PhotoVo;

public class PhotoDao {
	private static PhotoDao single = null;
	
	private PhotoDao() {
	}
	
	public static PhotoDao getInstance() {
		if(single == null) {
			single new PhotoDao();
		}
		return single;
	}

	public List<PhotoVo> selectList() {
		
		return null;
	}
}