package kr.co.cooks.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.cooks.service.FreeService;
import kr.co.cooks.vo.FreeVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FreeControl {
	private static final Logger logger = LoggerFactory.getLogger(FreeControl.class);
	@Autowired
	FreeService freeService;
	FreeVO freeVO;
	
	@RequestMapping(value="/FreeList.app")
	public ModelAndView FreeBoard(@RequestParam String pageNum){
		
	ModelAndView mav = new ModelAndView();
	
	HashMap<String, Object> hm = freeService.list(pageNum);
	
	
	mav.addObject("pageNum", pageNum);
	mav.addObject("freeList", (List<FreeVO>)hm.get("freeList"));
//	mav.addObject("count", hm.get("count"));
	mav.addObject("pagecode", (String)hm.get("pagecode"));
	mav.setViewName("board_free/free");
	return mav;
	}
	
	@RequestMapping(value="/FreeWrite.app")
	public String freewrite(@ModelAttribute FreeVO freeVO, HttpSession session, @RequestParam String userId){
		freeVO.setId((String)session.getAttribute("id"));
//		System.out.println(" " + freeVO);
		freeService.freewrite(freeVO, userId);
		return "redirect:/FreeList.app?pageNum="+1;
	}
	
	@RequestMapping(value="/FreeWriteForm.app")
	public ModelAndView freewriteForm(HttpSession session, HttpServletResponse res){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board_free/free_writeForm");
		return mav;
	}
	
	@RequestMapping(value="/FreeContent.app")
	public ModelAndView freecontent(HttpServletRequest req,HttpServletResponse res){
		ModelAndView mav = new ModelAndView();
		int free_Num = Integer.parseInt(req.getParameter("free_Num"));
		freeVO = freeService.freecontent(free_Num);
		mav.addObject("freeVO", freeVO);
		mav.addObject("pageNum", req.getParameter("pageNum"));
		mav.setViewName("board_free/free_content");
		return mav;
	}
	
	@RequestMapping(value="/FreeUpdateForm.app")
	public ModelAndView freeupdateForm(@RequestParam int free_Num, @RequestParam int pageNum){
		ModelAndView mav = new ModelAndView();
		freeVO = freeService.getUpdateFree(free_Num);
		mav.addObject("pageNum", pageNum);
		mav.addObject("freeVO", freeVO);
		mav.setViewName("board_free/free_updateForm");
		return mav;
	}
	
	@RequestMapping(value="/FreeUpdate.app")
	public ModelAndView freeupdate(FreeVO freeVO, @RequestParam int pageNum){
		System.out.println(freeVO);
		
		ModelAndView mav = new ModelAndView();
		
		freeService.updateFree(freeVO);
		
		mav.addObject("pageNum", pageNum);
		mav.setViewName("redirect:/FreeContent.app?free_Num="+freeVO.getFree_Num());
		return mav;
	}
	
	@RequestMapping(value="/FreeDelete.app")
	public ModelAndView freedelete(@RequestParam String pageNum, @RequestParam int free_Num){
		ModelAndView mav = new ModelAndView();
		freeService.freedelete(free_Num);
		mav.addObject("free_Num", free_Num);
		mav.setViewName("redirect:/FreeList.app?pageNum="+pageNum);
		return mav;
	}
	
	//조회수 추가
	@RequestMapping(value="/FreeHit.app")
	public ModelAndView freeHit(int free_Num) {
		ModelAndView mav = new ModelAndView();
			
		freeService.freeHit(free_Num);
		mav.setViewName("JSON");
		return mav ; 	
							
	}
}
