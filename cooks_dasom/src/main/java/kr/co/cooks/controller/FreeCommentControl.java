package kr.co.cooks.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.cooks.service.FreeCommentService;
import kr.co.cooks.vo.FreeCommentVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FreeCommentControl {
	@Autowired FreeCommentService freeCommentService;
	
	//코멘트 쓰기
	@RequestMapping(value="/FreeCommentWrite.app")
	public ModelAndView freeCommentWrite(@ModelAttribute FreeCommentVO freeCommentVO, HttpSession session, HttpServletResponse res){
		ModelAndView  mav = new ModelAndView();
		
		freeCommentVO.setId((String)session.getAttribute("id"));
		
		mav.addObject("freeCommentVO", freeCommentService.freeCommentWrite(freeCommentVO));
		mav.setViewName("JSON");
		
		return mav;
		
	}
	
	@RequestMapping(value="FreeCommentRead.app")
	public ModelAndView freeCommentRead(int free_Num, int endRow, HttpServletResponse res){
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("freeCommentVO", freeCommentService.freeCommentRead(free_Num, endRow));
		mav.setViewName("JSON");
		return mav;
	}
}
