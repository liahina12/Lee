package org.Lee.service;

import java.util.List;

import org.Lee.domain.Criteria;
import org.Lee.domain.ReplyPageDTO2;
import org.Lee.domain.ReplyVO2;

public interface ReplyService2 {

    public int register(ReplyVO2 vo);
	
	public ReplyVO2 get(int rno);
	
	public int modify(ReplyVO2 vo);
	
	public int remove(int rno);
	
	public List<ReplyVO2> getList(Criteria cri, int bno);
	
	public ReplyPageDTO2 getListPage(Criteria cri, int bno);
}
