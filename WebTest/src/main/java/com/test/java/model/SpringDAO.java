package com.test.java.model;

import org.springframework.stereotype.Repository;

//스프링 빈
//@Component
@Repository
public class SpringDAO {

	public int count() {
		
		//select count(*) from tblBoard
		return 300;		
	}

	public void add(AddressDTO dto) {
		
		System.out.println("확인 > " + dto.toString());
		
	}
	
	
	//ex08
	public String work() {
		
		//select..		
		return "스프링";
	}
	
}












