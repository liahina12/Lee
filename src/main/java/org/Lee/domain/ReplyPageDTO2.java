package org.Lee.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class ReplyPageDTO2 {

	private int replyCnt;
	private List<ReplyVO2> list;
}
