package com.spring.ch19.service;

import java.util.HashMap;
import com.spring.ch19.vo.BbsVO;

public interface BbsService {
    public HashMap<String, Object>listBoard(BbsVO param);
    public BbsVO selectBoard(BbsVO param);
    public int   insertBoard(BbsVO param);
    public int   updateBoard(BbsVO param); 
    public int   deleteBoard(BbsVO param);
    public int   replyBoard(BbsVO param);
    public int   addHitCount(BbsVO param);
    public int   addReplyOrder(BbsVO param);
}
