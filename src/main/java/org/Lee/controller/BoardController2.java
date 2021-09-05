package org.Lee.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.Lee.domain.BoardAttachVO2;
import org.Lee.domain.BoardVO2;
import org.Lee.domain.Criteria;
import org.Lee.domain.PageDTO;
import org.Lee.service.BoardService2;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController2 {

	private BoardService2 service;
	
/*	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}*/
	@GetMapping("/list2")
	public void list(Criteria cri, Model model) {
		
		log.info("list2: " + cri);		
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, 123));
		//model.addAttribute("pageMaker", new PageDTO(cri, total));
		int total = service.getTotal(cri);
		
		log.info("total: " + total);
		
		model.addAttribute("pageMaker", new PageDTO(cri , total));
	}
	//insert를 하기 위한 service
	@PostMapping("/register2")
	public String register(BoardVO2 board, RedirectAttributes rttr) {
		log.info("==========================");
		log.info("register2: " + board);
		if(board.getAttachList2() != null) {
			log.info("==========================");
			service.register(board);
			rttr.addFlashAttribute("result", board.getBno()); //forword
		}else {
			log.info("==========================");
			service.register(board);
			rttr.addFlashAttribute("result", board.getBno());
		}
		return "redirect:/board/list2";   //redirect	
	}
	
	@GetMapping({"/get2","/modify2"})
	public void get(@RequestParam("bno") int bno,@ModelAttribute("cri") Criteria cri, Model model) {
		log.info("/get2 or modify2");
		model.addAttribute("board", service.get(bno));
		
	}
	
	@PostMapping("/modify2")
	public String modify(BoardVO2 board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify2: " + board);
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/board/list2";		
		//return "redirect:/board/list"+cri.getListLink();
		
	}
	
	@PostMapping("/remove2")
	public String remove(@RequestParam("bno") int bno, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("remove2...." + bno);
		
		List<BoardAttachVO2> attachList = service.getAttachList(bno);
		
		if(service.remove(bno)) {
			deleteFiles(attachList);
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/board/list2" + cri.getListLink();
		//return "redirect:/board/list"+cri.getListLink();
	}
	
	private void deleteFiles(List<BoardAttachVO2> attachList) {
		if(attachList == null || attachList.size() == 0) {
			return;
		}
		log.info("delete2 attach files...................");
		log.info(attachList);
		attachList.forEach(attach -> {
			try {
				Path file =Paths.get("C:\\upload\\"+ attach.getUploadPath()+"\\"+attach.getUuid()+"_"+attach.getFileName());
				Files.deleteIfExists(file);
				if(Files.probeContentType(file).startsWith("image")) {
					Path thumbNail = Paths.get("C:\\upload\\"+attach.getUploadPath()+"\\s_"+attach.getUuid()+"_"+attach.getFileName());
					Files.delete(thumbNail);
				}
			}catch(Exception e) {
				log.error("delete file error" + e.getMessage());
			}
		});
	}
	
	//글쓰기 화면으로 이동하기 위한 @GetMapping
	@GetMapping("/register2")
	public void register() {
		
	}
	
	@GetMapping(value = "/getAttachList2", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO2>> getAttachList(int bno){
		log.info("getAttachList2 " + bno);
		service.updateViewCnt(bno);
		return new ResponseEntity<>(service.getAttachList(bno), HttpStatus.OK);
	}
	
	
}
