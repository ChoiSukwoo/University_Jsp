package com.spring.ch19.dao;

import java.util.List;
import com.spring.ch19.vo.BbsVO;

public interface BbsDAO {
    public List<BbsVO> listBoard(BbsVO param);
    public int   selectBoardCnt(BbsVO param);
    public BbsVO selectBoard(BbsVO param);
    public int   insertBoard(BbsVO param);
    public int   updateBoard(BbsVO param);
    public int   deleteBoard(BbsVO param);
    public int   replyBoard(BbsVO param);
    public int   addHitCount(BbsVO param);
    public int   addReplyOrder(BbsVO param);
}
