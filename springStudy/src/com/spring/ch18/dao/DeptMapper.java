package com.spring.ch18.dao;

import java.util.List;
import com.spring.ch18.vo.DeptVO;

public interface DeptMapper {
	
    public List<DeptVO> listDepartment(DeptVO param);
    public DeptVO selectDepartment(DeptVO param);
    public int insertDepartment(DeptVO param);
    public int updateDepartment(DeptVO param);
    public int deleteDepartment(DeptVO param);
}
