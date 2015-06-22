package kr.co.cooks.service;

import java.util.HashMap;
import java.util.List;

import kr.co.cooks.dao.FreeCommentDao;
import kr.co.cooks.vo.FreeCommentVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FreeCommentService {
	@Autowired FreeCommentDao freeCommentDao; 
	
	public List<FreeCommentVO> freeCommentWrite(FreeCommentVO freeCommentVO){
		
		freeCommentDao.freeCommentWrite(freeCommentVO);
		return freeCommentRead(freeCommentVO.getFree_Num(),10);
	}
	
	public List<FreeCommentVO> freeCommentRead(int free_Num, int endRow){
		HashMap<String, Integer> hashMap = new HashMap<>();
		
		hashMap.put("free_Num", free_Num);
		hashMap.put("endRow", endRow);
		
		return freeCommentDao.freeCommentRead(hashMap);
	}
	
	
}
