package com.bean;

import jakarta.validation.constraints.NotBlank;

public class BatchBean {

	@NotBlank(message = "Please Enter Batch Name")
	private String batchName;
	
	@NotBlank(message = "Please Enter Subject Name")
	private String subjectName;

	@NotBlank(message = "Please Enter Faculty Name")
	private String facultyName;

	private Integer totalHours;

	public String getBatchName() {
		return batchName;
	}

	public void setBatchName(String batchName) {
		this.batchName = batchName;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getFacultyName() {
		return facultyName;
	}

	public void setFacultyName(String facultyName) {
		this.facultyName = facultyName;
	}

	public Integer getTotalHours() {
		return totalHours;
	}

	public void setTotalHours(Integer totalHours) {
		this.totalHours = totalHours;
	}

}
