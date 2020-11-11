package com.spring.ch19.dao;

import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import com.spring.ch19.vo.BbsVO;

public class BbsDAOImpl extends SqlSessionDaoSupport implements BbsDAO {

@Override
public List<BbsVO> listBoard(BbsVO param) {
   return getSqlSession().selectList("com.board.dao.BbsDAO.listBoard");
}   
public int selectBoardCnt(BbsVO param) {
   return Integer.parseInt(getSqlSession().selectOne("selectBoardCnt").toString());
}
public BbsVO selectBoard(BbsVO param) {
   return (BbsVO)getSqlSession().selectOne("com.board.dao.BbsDAO.selectBoard");
}
public int insertBoard(BbsVO param) {
   return (int)getSqlSession().insert("com.board.dao.BbsDAO.insertBoard");
}
public int replyBoard(BbsVO param) {
   return (int)getSqlSession().insert("com.board.dao.BbsDAO.replyBoard");
}
public int updateBoard(BbsVO param) {
   return (int)getSqlSession().update("com.board.dao.BbsDAO.updateBoard");
}
public int deleteBoard(BbsVO param) {
   return (int)getSqlSession().delete("com.board.dao.BbsDAO.deleteBoard");
}
public int addHitCount(BbsVO param) {
   return (int)getSqlSession().update("com.board.dao.BbsDAO.addHitCount");
}
public int addReplyOrder(BbsVO param) {
   return (int)getSqlSession().update("com.board.dao.BbsDAO.addReplyOrder");
}
}
