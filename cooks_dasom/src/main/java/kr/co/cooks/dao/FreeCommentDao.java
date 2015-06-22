package kr.co.cooks.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.cooks.vo.FreeCommentVO;

public interface FreeCommentDao {
	public void freeCommentWrite(FreeCommentVO freeCommentVO);
	public List<FreeCommentVO> freeCommentRead(HashMap<String, Integer> hashMap);
}
