package org.Lee.service;

import java.util.List;

import org.Lee.domain.BoardAttachVO2;
import org.Lee.domain.BoardVO2;
import org.Lee.domain.Criteria;
import org.Lee.mapper.BoardAttachMapper2;
import org.Lee.mapper.BoardMapper2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl2 implements BoardService2 {

	//spring 4.3 이상에서 자동처리
	@Setter(onMethod_ = @Autowired)
	private BoardMapper2 mapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardAttachMapper2 attachMapper;
	
	@Transactional
	@Override
	public void register(BoardVO2 board) { 
		log.info("register......."+ board);
		mapper.insertSelectKey(board);
	
		if(board.getAttachList2()==null || board.getAttachList2().size() <= 0) {
			return;
		}
		board.getAttachList2().forEach(attach ->{
			attach.setBno(board.getBno());
			attachMapper.insert(attach);
		});
	}

	@Override
	public BoardVO2 get(int bno) {
		log.info("get......"+bno);
		return mapper.read(bno);
	}
	
	@Transactional
	@Override
	public boolean modify(BoardVO2 board) {
		log.info("modify.........." + board);
		attachMapper.deleteAll(board.getBno());
		boolean modifyResult = mapper.update(board) == 1;
		if(modifyResult && board.getAttachList2() != null && board.getAttachList2().size() > 0) {
			board.getAttachList2().forEach(attach -> {
				attach.setBno(board.getBno());
				attachMapper.insert(attach);
			});
		}
		return modifyResult;
		/*return mapper.update(board) == 1;*/
	}
	
	@Transactional
	@Override
	public boolean remove(int bno) {
		log.info("remove........." + bno);
		
		attachMapper.deleteAll(bno);
		
		return mapper.delete(bno) == 1;
	}
   
 /*페이징 처리 전 */
	/*	  @Override
		public List<BoardVO> getList() {
			
		    log.info("getList...........");
			return mapper.getList();
		}*/
	
	@Override
	public List<BoardVO2> getList(Criteria cri){
		log.info("get List with criteria: " + cri);
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<BoardAttachVO2> getAttachList(int bno){
		log.info("get Attach list by bno " + bno);
		return attachMapper.findByBno(bno);
	}
	@Transactional	
	@Override
	public int updateViewCnt(int bno) {
		return mapper.updateViewCnt(bno);
		
	}
	
	@Override
	public List<BoardVO2> selectBoard() throws Exception {

		return mapper.selectBoard();
	}
	
}
