package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.MemberDTO;
import com.dto.QaDTO;
import com.service.QaService;

@Controller
public class QaController {
	
	@Autowired
	QaService service;
	
	@RequestMapping("/userQA")
	public String userQA() {
		return "question";
	}
	
	@RequestMapping("/managerQA")
	public String managerQA() {
		return "answer";
	}
	
	@RequestMapping("/loginCheck/user_qaList")
	public String user_qaList() {
		return "redirect:../user_qaList";
	}

	@RequestMapping("/manager_qaList")
	public String manager_qaList() {
		return "manager_qaList";
	}
	
	@RequestMapping("/loginCheck/question")
	public String question(QaDTO qdto, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		String userid = dto.getUserid();
		qdto.setUserid(userid);
		System.out.println(qdto);
//		list<QADTO> = service.select();
		session.setAttribute("question", qdto);
		return "redirect:../user_qaList";
	}
}
