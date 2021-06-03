package org.Lee.service;

import java.util.List;

import org.Lee.domain.Criteria;
import org.Lee.domain.ReplyPageDTO2;
import org.Lee.domain.ReplyVO2;
import org.Lee.mapper.BoardMapper2;
import org.Lee.mapper.ReplyMapper2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class ReplyServiceImpl2 implements ReplyService2 {
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper2 mapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper2 boardMapper;
	
	@Transactional
	@Override
	public int register(ReplyVO2 vo) {
		
		log.info("register......" + vo);
		boardMapper.updateReplyCnt(vo.getBno(), 1);
		return mapper.insert(vo);
	}
	
	@Override
	public ReplyVO2 get(int rno) {
		
		log.info("get......" + rno);
		return mapper.read(rno);
	}
	
	@Override
	public int modify(ReplyVO2 vo) {
		log.info("modify......" + vo);
	    return mapper.update(vo);
	}
	
	@Transactional
	@Override
	public int remove(int rno) {
		log.info("remove......" + rno);
		ReplyVO2 vo = mapper.read(rno);
		boardMapper.updateReplyCnt(vo.getBno(), -1);
		return mapper.delete(rno);
	}
	
	@Override
	public List<ReplyVO2> getList(Criteria cri, int bno){
		log.info("get Reply List of a Board " + bno);
		return mapper.getListWithPaging(cri, bno);
	}
	
	@Override
	public ReplyPageDTO2 getListPage(Criteria cri, int bno) {
		return new ReplyPageDTO2(
				mapper.getCountByBno(bno),
				mapper.getListWithPaging(cri, bno));
	}
}