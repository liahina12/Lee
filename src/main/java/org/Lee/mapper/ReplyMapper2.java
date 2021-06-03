package org.Lee.mapper;

import java.util.List;
import org.Lee.domain.Criteria;
import org.Lee.domain.ReplyVO2;
import org.apache.ibatis.annotations.Param;

public interface ReplyMapper2 {

    public int insert(ReplyVO2 vo);
	
	public ReplyVO2 read(int bno);
	
	public int delete(int rno);
	
	public int update(ReplyVO2 reply);
	
	public List<ReplyVO2> getListWithPaging(@Param("cri") Criteria cri, @Param("bno") int bno);		
	
	public int getCountByBno(int bno);
}
