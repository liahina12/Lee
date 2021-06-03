package org.Lee.mapper;

import java.util.List;

import org.Lee.domain.BoardAttachVO2;

public interface BoardAttachMapper2 {

	public void insert(BoardAttachVO2 vo);
	
	public void delete(String uuid);
	
	public List<BoardAttachVO2> findByBno(int bno);
	
	public void deleteAll(int bno);
	
	public List<BoardAttachVO2> getOldFiles();
}
