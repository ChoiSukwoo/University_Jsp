package com.spring.ch18.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ch18.service.DeptService;
import com.spring.ch18.vo.DeptVO;

/* ��Ʈ�ѷ�  */
@Controller
@RequestMapping(value="/department")
public class DepartmentController {

private static final String CONTEXT_PATH="ch18";
@Autowired
private DeptService deptService;

/* ��ü ��ȸ */
@RequestMapping("/listDepartment")
public ModelAndView listDepartment(DeptVO param) {
   ModelAndView mav = new ModelAndView();
   HashMap<String, Object> map = deptService.listDepartment(param);
   mav.addObject("departmentList", map.get("dataList"));
   mav.setViewName(CONTEXT_PATH + "/department");
   return mav;
}

/* �� ���� */
@RequestMapping("/selectDepartment")
public ModelAndView selectDepartment(DeptVO param) {
    ModelAndView mav = new ModelAndView();
    if(param.getDeptid().equals("")) {
       mav.addObject("mode", "insert");
    } else {
       mav.addObject("DeptVO", deptService.selectDepartment(param));
       mav.addObject("mode", "update");
   }
   mav.setViewName(CONTEXT_PATH + "/department_pop");
   return mav;
}

/* �� �߰� */
@RequestMapping("/insertDepartment")
public ModelAndView insertDepartment(DeptVO param) {
   int result = deptService.insertDepartment(param);
   String resultStr = "";
   if(result > 0) resultStr = "��� �Ϸ� !!!";
   else resultStr = "��� ���� ???";
   ModelAndView mav = new ModelAndView();
   mav.addObject("result", resultStr);
   mav.setViewName("/result");
   return mav;
}

/* �� ���� */
@RequestMapping("/updateDepartment")
public ModelAndView updateDepartment(DeptVO param) {
   int result = deptService.updateDepartment(param);
   String resultStr = "";
   if(result > 0) resultStr = "���� �Ϸ� !!!";
   else resultStr = "���� ���� ???";
   ModelAndView mav = new ModelAndView();
   mav.addObject("result", resultStr);
   mav.setViewName("/result");
   return mav;
}

/* �� ���� */
@RequestMapping("/deleteDepartment")
public ModelAndView deleteDepartment(DeptVO param) {
   int result = deptService.deleteDepartment(param);
   String resultStr = "";
   if(result > 0) resultStr = "���� �Ϸ� !!!";
   else resultStr = "���� ���� ???";
   ModelAndView mav = new ModelAndView();
   mav.addObject("result", resultStr);
   mav.setViewName("/result");
   return mav;
}
}
