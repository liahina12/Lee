package org.Lee.domain;

import lombok.Data;

@Data
public class BoardAttachVO2 {

	private String fileName;
	private String uploadPath;
	private String uuid;
    private boolean fileType;
    
    private int bno;
}
