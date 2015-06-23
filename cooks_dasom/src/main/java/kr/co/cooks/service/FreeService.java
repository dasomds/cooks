package kr.co.cooks.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.co.cooks.dao.FreeDao;
import kr.co.cooks.vo.FreeVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class FreeService {
	@Autowired FreeDao freeDao;
//	Page page;
	FreeVO freeVO;
	ModelAndView mav = new ModelAndView();
	List<FreeVO> freeList;
	
	public HashMap<String,Object> list(String pageNum){
		HashMap<String,Object> hm = new HashMap<>();
//		int count=0; //총 글의 갯수
//		int pageSize=10; //한 페이지에 보여질 글의 갯수
//		int pageBlock=10; //한 페이지에 보여질 링크 갯수
		
		//String pageNum=req.getParameter("pageNum");
		if(pageNum == null){
			pageNum="1";
		}
		
//		count=freeDao.getListCount();
		
//		page.paging(Integer.parseInt(pageNum), count, pageSize, pageBlock);
		
//		if(count > 0){
			HashMap<String,Integer> paging = new HashMap<>();
			paging.put("startRow",1);
			paging.put("endRow",10);
			freeList=freeDao.getfreeList(paging);
			
		
			//articleList = bbsDao.getArticles(1,10); //페이징 쓰기전에 사이즈를 줘서 출력하는 방법
//		}else{
//			freeList=null;
//		}
//		hm.put("count", count);
		hm.put("freeList", freeList);
//		hm.put("pagecode", page.getSb().toString());
		return hm;
	}
	public void freewrite(FreeVO freeVO, String userId){
		HashMap<String, Object> params = new HashMap<>();
		params.put("freeVO", freeVO);
		params.put("userId", userId);
		
		freeDao.freewrite(params);
	}
	
	public ModelAndView freewriteForm(HttpServletRequest req){
		HttpSession hs = req.getSession();
		
		if(hs.getAttribute("id")!=null){
			mav.setViewName("board_free/free_writeForm");
		}else{
			mav.addObject("writeForm", "ok");
			mav.setViewName("login");
			return mav;
		}
		return mav;
	}
	
	public FreeVO freecontent(int free_Num){
//		freeDao.freeHit(freeVO);
		return freeVO = freeDao.freecontent(free_Num);
	}
	
	public FreeVO getUpdateFree(int free_Num){
		return freeDao.getUpdateFree(free_Num);
	}
	
	public void updateFree(FreeVO freeVO){
//		freeDao.freeHit(freeVO);
		freeDao.updateFree(freeVO);
	}
	
	public void freedelete(int free_Num){
		freeDao.deleteFree(free_Num);
	}
	
	public int getFreeCommentCount(int free_Num){
		return freeDao.getFreeCommentCount(free_Num);
	}
	
	public void freeHit(int free_Num){
		freeDao.freeHit(free_Num);
	}
	
}
