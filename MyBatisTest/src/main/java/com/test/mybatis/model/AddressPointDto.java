package com.test.mybatis.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AddressPointDto {

	private String seq;
	private String name;
	private Integer age;
	private String address;
	private String gender;
	private String pseq;
	private Integer point;
	private String aseq;
	
	
	//- 1(tblAddress) : 1(tblPoint)
	private PointDto pdto; //자식 객체
	
}
