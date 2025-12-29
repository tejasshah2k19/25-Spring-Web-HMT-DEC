package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.BatchBean;

@Repository
public class BatchDao {

	@Autowired
	JdbcTemplate stmt;

	// batch insert update delete select

	public void addBatch(BatchBean batchBean) {
		stmt.update("insert into batches (batchname,facultyname,subjectname,totalhours) values (?,?,?,?)",
				batchBean.getBatchName(), batchBean.getFacultyName(), batchBean.getSubjectName(),
				batchBean.getTotalHours());
	}

	public List<BatchBean> getAllBatch() {
		return stmt.query("select * from  batches", new BeanPropertyRowMapper<>(BatchBean.class));
	}
}
