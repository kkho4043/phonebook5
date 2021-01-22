package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PersonVo;

@Repository
public class PhoneDao {

	@Autowired
	private SqlSession sqlSession;

	// 리스트
	public List<PersonVo> getPersonList() {

		List<PersonVo> personList = sqlSession.selectList("phonebook.selectList2");
		return personList;

	}

	// 생성
	public void personInsert(PersonVo personVo) {

		sqlSession.insert("phonebook.insert", personVo);
	}

	// 지우기
	public void parsonDelete(int personId) {

		sqlSession.delete("phonebook.delete", personId);
	}

	// 한명하져오기
	public PersonVo getPerson(int personId) {

		PersonVo personvo = sqlSession.selectOne("selectOne", personId);
		System.out.println("personVoONe:"+personvo);
		return personvo;

	}
	
	//업데이트
	public void personUpdate(PersonVo personVo) {
		
		sqlSession.update("update",personVo);
	}

}
