package org.Lee.mapper;

import java.util.List;

import org.Lee.domain.BoardVO2;
import org.Lee.domain.Criteria;
import org.apache.ibatis.annotations.Param;

public interface BoardMapper2 {

	//@Select(" select * from tb1_board where bno > 0")
	public List<BoardVO2> getList();
	
	public List<BoardVO2> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	public void insert(BoardVO2 board);
	
	public void insertSelectKey(BoardVO2 board);
	
	public BoardVO2 read(int bno);
	
	public int delete(int bno);
	
	public int update(BoardVO2 board);
	
	public void updateReplyCnt(@Param("bno") int bno, @Param("amount") int amount);
	
	public int updateViewCnt(int bno);
	
	public List<BoardVO2> selectBoard() throws Exception;
}
