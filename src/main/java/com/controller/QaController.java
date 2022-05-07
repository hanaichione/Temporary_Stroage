package com.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String managerQA(@RequestParam("num") int num, HttpSession session) {
		System.out.println(num);
		QaDTO qdto = service.selectOne(num);
		System.out.println(qdto);
		session.setAttribute("manager_qdto", qdto);
		return "answer";
	}
	
	@RequestMapping("/answerUpdate")
	public String answerUpdate(@RequestParam Map<Integer, String> map) {
		System.out.println(map);
		int n = service.answerUpdate(map);
		if (n == 1) {
			System.out.println("업데이트 성공");
		} else {
			System.out.println("업데이트 실패");
		}
		return "redirect:/manager_qaList";
	}
	
	@RequestMapping("/loginCheck/user_qaList")
	public String user_qaList(HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		String userid = dto.getUserid();
		
		List<QaDTO> list = service.selectAll(userid);
		
		session.setAttribute("qlist", list);
		System.out.println(list);
		
		return "redirect:../user_qaList";
	}

	@RequestMapping("/manager_qaList")
	public String manager_qaList(HttpSession session) {
		List<QaDTO> list = service.manager_selectAll();
		
		session.setAttribute("manager_qlist", list);
		System.out.println(list);
		return "manager_qaList";
	}
	
	@RequestMapping("/loginCheck/question")
	public String question(QaDTO qdto, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		String userid = dto.getUserid();
		qdto.setUserid(userid);
		System.out.println(qdto);
		
		int n = service.addQ(qdto);
		System.out.println(qdto);
		System.out.println(n);
		
		return "redirect:../loginCheck/user_qaList";
	}
	
	@RequestMapping("/lookAnswer")
	public String lookAnswer(int num, HttpSession session) {
		System.out.println(num);
		
		QaDTO qdto = service.selectOne(num);
		session.setAttribute("answerDto", qdto);
		
		return "lookAnswer";
	}
	
	@RequestMapping("/lookQuestion")
	public String lookQuestion(int num, HttpSession session) {
		System.out.println(num);
		
		QaDTO qdto = service.selectOne(num);
		session.setAttribute("questionDto", qdto);
		
		return "lookQuestion";
	}
	
	@RequestMapping("/updateQuestion")
	public String updateQuestion(QaDTO qdto, HttpSession session) {
		System.out.println(qdto);
		int n = service.updateQuestion(qdto);
		if (n == 1) {
			System.out.println("문의 내용 업데이트 완료");
		} else {
			System.out.println("문의 없데이트 실패");
		}
		return "redirect:/loginCheck/user_qaList";
	}
	
	@RequestMapping("/deleteQuestion")
	public String deleteQuestion(int num) {
		System.out.println(num);
		int n = service.deleteQuestion(num);
		if (n == 1) {
			System.out.println("문의 삭제 완료");
		} else {
			System.out.println("문의 삭제 실패");
		}
		return "redirect:/loginCheck/user_qaList";
	}
}
