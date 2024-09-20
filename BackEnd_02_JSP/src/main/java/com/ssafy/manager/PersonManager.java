package com.ssafy.manager;

import java.util.ArrayList;
import java.util.List;

import com.ssafy.dto.Person;

public class PersonManager {
	private List<Person> list = new ArrayList<>();
	
	private PersonManager() {}
	
	private static PersonManager manager = new PersonManager();
	
	public static PersonManager getInstance() {
		return manager;
	}
	
	// 등록
	public void regist(Person p) {
		list.add(p);
	}
	
	// 목록 조회
	public List<Person> getList() {
		return list;
	}
}
