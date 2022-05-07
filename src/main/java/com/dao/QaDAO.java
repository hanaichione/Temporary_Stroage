package com.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.QaDTO;

@Repository
public class QaDAO {
	@Autowired
	SqlSessionTemplate template;//자동주입

	public List<QaDTO> selectAll(String userid) {
		List<QaDTO> list = template.selectList("selectAll", userid);
		return list;
	}

	public int addQ(QaDTO qdto) {
		int n = template.insert("addQ", qdto);
		return n;
	}

	public List<QaDTO> manager_selectAll() {
		List<QaDTO> list = template.selectList("manager_selectAll");
		return list;
	}

	public QaDTO selectOne(int num) {
		QaDTO qdto = template.selectOne("selectOne", num);
		return qdto;
	}

	public int answerUpdate(Map<Integer, String> map) {
		int n = template.update("answerUpdate", map);
		return n;
	}

	public int updateQuestion(QaDTO qdto) {
		int n = template.update("updateQuestion", qdto);
		return n;
	}

	public int deleteQuestion(int num) {
		int n = template.update("deleteQuestion", num);
		return n;
	}
}
