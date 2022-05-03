package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.QaDAO;

@Service
public class QaService {
	@Autowired
	QaDAO dao;
	
	
}
