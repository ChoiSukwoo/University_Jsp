package com.spring.ch19.controller;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.spring.ch19.service.BbsService;
import com.spring.ch19.vo.BbsVO;

/** 게시판 컨트롤러  */
@Controller
@RequestMapping(value = "/board")
public class BoardController {

   private static final String CONTEXT_PATH = "ch19";
   @Autowired
   private BbsService bbsService;

   /** 게시물 목록 조회    */
   @RequestMapping("/listBoard")
   public ModelAndView listBoard(BbsVO param) {
      ModelAndView mav = new ModelAndView();
      mav.addObject("srchtitle", param.getBtitle());
      mav.addObject("srchcontent", param.getBcontent());
      HashMap<String, Object> map = bbsService.listBoard(param);
      mav.addObject("bbsList", map.get("dataList"));
      mav.addObject("pageSet", map.get("pageSet"));
      mav.setViewName(CONTEXT_PATH + "/board");
      return mav;
    }

   /** 게시물 보기    */
   @RequestMapping("/selectBoard")
   public ModelAndView selectBoard(BbsVO param) {
      ModelAndView mav = new ModelAndView();
      if(param.getBid() != 0) {
         mav.addObject("bbsVO", bbsService.addHitCount(param));
         mav.addObject("bbsVO", bbsService.selectBoard(param));
         mav.addObject("mode", "update");
         mav.setViewName(CONTEXT_PATH + "/boardshow");
       } else if (param.getBref() != 0) {
                mav.addObject("mode", "reply");
                mav.setViewName(CONTEXT_PATH + "/boardwrite");
              } else {
                  mav.addObject("mode", "insert");
                  mav.setViewName(CONTEXT_PATH + "/boardwrite");
                }
      return mav;
    }

   /** 게시물 쓰기 */
   @RequestMapping("/insertBoard")
   public ModelAndView insertBoard(BbsVO param) {
      int result = bbsService.insertBoard(param);
      String resultStr = "등록 !!!";
      if(result == 0) resultStr = "등록 실패???";
      ModelAndView mav = new ModelAndView();
      mav.addObject("result", resultStr);
      mav.setViewName("/result");
      return mav;
   }

   /** 게시물 답변 */
   @RequestMapping("/replyBoard")
   public ModelAndView replyBoard(BbsVO param) {
      bbsService.addReplyOrder(param);
      int result = bbsService.replyBoard(param);
      String resultStr = "답변 등록 !!!";
      if(result == 0) resultStr = "답변 실패???";
      ModelAndView mav = new ModelAndView();
      mav.addObject("result", resultStr);
      mav.setViewName("/result");
      return mav;
   }

   /** 게시물 수정    */
   @RequestMapping("/updateBoard")
   public ModelAndView updateBoard(BbsVO param) {
      int result = bbsService.updateBoard(param);
      String resultStr = "수정!!!";
      if(result == 0) resultStr = "수정 실패???";
      ModelAndView mav = new ModelAndView();
      mav.addObject("result", resultStr);
      mav.setViewName("/result");
      return mav;
    }

    /** 게시물 삭제    */
   @RequestMapping("/deleteBoard")
   public ModelAndView deleteBoard(BbsVO param) {
      int result = bbsService.deleteBoard(param);
      String resultStr = "삭제 !!!";
      if(result == 0) resultStr = "삭제 실패???.";
      ModelAndView mav = new ModelAndView();
      mav.addObject("result", resultStr);
      mav.setViewName("/result");
      return mav;
    }
}
