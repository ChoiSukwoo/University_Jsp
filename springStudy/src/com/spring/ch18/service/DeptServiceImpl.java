package com.spring.ch18.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.ch18.dao.DeptMapper;
import com.spring.ch18.vo.DeptVO;

@Service
@Transactional
public class DeptServiceImpl implements DeptService {

    @Autowired
    private DeptMapper deptMapper;

    public HashMap<String, Object> listDepartment(DeptVO param) {
    	HashMap<String, Object> ret = new HashMap<String, Object>();   	
		ret.put("dataList", deptMapper.listDepartment(param));
		return ret;
    }
    
    public DeptVO selectDepartment(DeptVO param) {
        return deptMapper.selectDepartment(param);
    }
    
    public int insertDepartment(DeptVO param) {
        return deptMapper.insertDepartment(param);
    }
    
    public int updateDepartment(DeptVO param) {
        return deptMapper.updateDepartment(param);
    }
    
    public int deleteDepartment(DeptVO param) {
        return deptMapper.deleteDepartment(param);
    }
    
}