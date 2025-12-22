package com.bean;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

public class BatchBean {

//	@NotEmpty -- array 
//	@Digits   -- 0-9
//	@Email	  --  XX@XX 		XX@XX.XX
//	@NegativeOrZero
//	@Negative
//	@Positive
//	@PositiveOrZero

	
	
	@NotBlank(message = "Please Enter Batch Name")
	private String batchName;

	@NotBlank(message = "Please Enter Subject Name")
	private String subjectName;

	@NotBlank(message = "Please Enter Faculty Valid Name")
	@Pattern(regexp = "[a-zA-Z]+",message = "Please Enter Valid Faculty Name")
	private String facultyName;

	@Min(value = 2, message = "Hours should be greater or equals 2")
	@Max(value = 5, message = "Max hours can be 5")
	@NotNull(message = "Please Enter Total Hours")
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
