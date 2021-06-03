package org.Lee.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO2 {
	
	private int bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updatedate;
	private int vcount;
	
	
	private int replycnt;
	
	private List<BoardAttachVO2> attachList2;
}
