package com.spring.ch19.service;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.spring.ch19.util.PageSet;
import com.spring.ch19.dao.BbsDAO;
import com.spring.ch19.vo.BbsVO;

@Service
@Transactional
public class BbsServiceImpl implements BbsService {

@Autowired
private BbsDAO bbsDao;

public HashMap<String, Object> listBoard(BbsVO param) {
   HashMap<String, Object> ret = new HashMap<String, Object>();
   int cnt = bbsDao.selectBoardCnt(param);  // 전체 행 계산
   ret.put("pageSet", new PageSet(param.getCurrPage(), cnt));
   ret.put("dataList", bbsDao.listBoard(param));
   return ret;
}
public BbsVO selectBoard(BbsVO param) {
   bbsDao.selectBoardCnt(param);
   return bbsDao.selectBoard(param);
} 
public int insertBoard(BbsVO param) {
   return bbsDao.insertBoard(param);
}
public int updateBoard(BbsVO param) {
   return bbsDao.updateBoard(param);
}
public int deleteBoard(BbsVO param) {
   return bbsDao.deleteBoard(param);
}
public int replyBoard(BbsVO param) {
   return bbsDao.replyBoard(param);
}
public int addHitCount(BbsVO param) {
   return bbsDao.addHitCount(param);
}
public int addReplyOrder(BbsVO param) {
   return bbsDao.addReplyOrder(param);
}
}
