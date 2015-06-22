package kr.co.cooks.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.cooks.vo.FreeVO;

public interface FreeDao {
//	public int getListCount();
	public List<FreeVO> getfreeList(HashMap<String, Integer> paging);
	
	public void freewrite(FreeVO freeVO);
	
	public FreeVO freecontent(int freeNum);
	
	public FreeVO getUpdateFree(int free_Num);
	public void updateFree(FreeVO freeVO);
	
	public void deleteFree(int free_Num);
}
