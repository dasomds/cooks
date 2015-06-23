package kr.co.cooks.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.cooks.vo.FreeCommentVO;
import kr.co.cooks.vo.FreeVO;

public interface FreeDao {
//	public int getListCount();
	public List<FreeVO> getfreeList(HashMap<String, Integer> paging);
	
	public void freewrite(HashMap<String, Object> params );
	
	public FreeVO freecontent(int freeNum);
	
	public FreeVO getUpdateFree(int free_Num);
	public void updateFree(FreeVO freeVO);
	
	public void deleteFree(int free_Num);
	
	//댓글 개수 가져오기
	public int getFreeCommentCount(int free_Num);
	
	//댓글 리스트 가져오기
	public List<FreeCommentVO> getFreeCommentList(HashMap<String, Integer> rowHashMap);
	
	//조회수
	public void freeHit(int free_Num);
	
}
