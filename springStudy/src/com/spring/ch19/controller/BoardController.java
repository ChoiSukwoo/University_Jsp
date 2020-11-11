package com.spring.ch19.controller;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.spring.ch19.service.BbsService;
import com.spring.ch19.vo.BbsVO;

/** �Խ��� ��Ʈ�ѷ�  */
@Controller
@RequestMapping(value = "/board")
public class BoardController {

   private static final String CONTEXT_PATH = "ch19";
   @Autowired
   private BbsService bbsService;

   /** �Խù� ��� ��ȸ    */
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

   /** �Խù� ����    */
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

   /** �Խù� ���� */
   @RequestMapping("/insertBoard")
   public ModelAndView insertBoard(BbsVO param) {
      int result = bbsService.insertBoard(param);
      String resultStr = "��� !!!";
      if(result == 0) resultStr = "��� ����???";
      ModelAndView mav = new ModelAndView();
      mav.addObject("result", resultStr);
      mav.setViewName("/result");
      return mav;
   }

   /** �Խù� �亯 */
   @RequestMapping("/replyBoard")
   public ModelAndView replyBoard(BbsVO param) {
      bbsService.addReplyOrder(param);
      int result = bbsService.replyBoard(param);
      String resultStr = "�亯 ��� !!!";
      if(result == 0) resultStr = "�亯 ����???";
      ModelAndView mav = new ModelAndView();
      mav.addObject("result", resultStr);
      mav.setViewName("/result");
      return mav;
   }

   /** �Խù� ����    */
   @RequestMapping("/updateBoard")
   public ModelAndView updateBoard(BbsVO param) {
      int result = bbsService.updateBoard(param);
      String resultStr = "����!!!";
      if(result == 0) resultStr = "���� ����???";
      ModelAndView mav = new ModelAndView();
      mav.addObject("result", resultStr);
      mav.setViewName("/result");
      return mav;
    }

    /** �Խù� ����    */
   @RequestMapping("/deleteBoard")
   public ModelAndView deleteBoard(BbsVO param) {
      int result = bbsService.deleteBoard(param);
      String resultStr = "���� !!!";
      if(result == 0) resultStr = "���� ����???.";
      ModelAndView mav = new ModelAndView();
      mav.addObject("result", resultStr);
      mav.setViewName("/result");
      return mav;
    }
}
