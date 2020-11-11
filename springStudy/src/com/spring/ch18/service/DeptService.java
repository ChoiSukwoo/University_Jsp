package com.spring.ch18.service;

import java.util.HashMap;
import com.spring.ch18.vo.DeptVO;

public interface DeptService {
	
    public HashMap<String, Object> listDepartment(DeptVO param);
    public DeptVO selectDepartment(DeptVO param);
    public int insertDepartment(DeptVO param);
    public int updateDepartment(DeptVO param);
    public int deleteDepartment(DeptVO param);
}
