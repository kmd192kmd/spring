package com.test.java.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class AddressDao {

	private final SqlSessionTemplate template;
	
	public List<AddressDto> list() {
		
		return template.selectList("address.list");
	}
	
}
