package com.spring.ch18.dao;

import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import com.spring.ch18.vo.DeptVO;

public class DeptMapperImpl extends SqlSessionDaoSupport 
                            implements DeptMapper {
@Override
public List<DeptVO> listDepartment(DeptVO param) {
  return getSqlSession().selectList("com.spring.ch18.dao.DeptDAO.listDepartment");
}
public DeptVO selectDepartment(DeptVO param) {
return (DeptVO)getSqlSession().selectOne("com.spring.ch18.dao.DeptDAO.selectDepartment");
}
public int insertDepartment(DeptVO param) {
   return (int)getSqlSession().insert("com.spring.ch18.dao.DeptDAO.insertDepartment");
}
public int updateDepartment(DeptVO param) {
   return (int)getSqlSession().update("com.spring.ch18.dao.DeptDAO.updateDepartment");
}
public int deleteDepartment(DeptVO param) {
   return (int)getSqlSession().delete("com.spring.ch18.dao.DeptDAO.deleteDepartment");
}
}
