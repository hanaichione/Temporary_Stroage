package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.QaDAO;
import com.dto.QaDTO;

@Service
public class QaService {
	@Autowired
	QaDAO dao;

	public List<QaDTO> selectAll(String userid) {
		List<QaDTO> list = dao.selectAll(userid);
		return list;
	}

	public int addQ(QaDTO qdto) {
		int n = dao.addQ(qdto);
		return n;
	}

	public List<QaDTO> manager_selectAll() {
		List<QaDTO> list = dao.manager_selectAll();
		return list;
	}

	public QaDTO selectOne(int num) {
		QaDTO qdto = dao.selectOne(num);
		return qdto;
	}

	public int answerUpdate(Map<Integer, String> map) {
		int n = dao.answerUpdate(map);
		return n;
	}

	public int updateQuestion(QaDTO qdto) {
		int n = dao.updateQuestion(qdto);
		return n;
	}

	public int deleteQuestion(int num) {
		int n = dao.deleteQuestion(num);
		return n;
	}
	
	
}
