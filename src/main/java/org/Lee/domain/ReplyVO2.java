package org.Lee.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO2 {

	private int rno;
	private int bno;
	private String reply;
	private String replyer;
	private Date replydate;
	private Date updateDate;
}