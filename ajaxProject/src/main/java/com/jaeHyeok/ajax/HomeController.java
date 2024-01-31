package com.jaeHyeok.ajax;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	//1. 기존 방식 (HttpServledtResPonse)
	@RequestMapping("ajax1.do")
	public void ajaxMethod1(String name
							,int age
							,HttpServletResponse resp) throws IOException {
		
		System.out.println("name :" + name);
		System.out.println("age : "+ age);
		
		//요청 처맇 후 응답 데이터 돌려주기 
		
		String resultStr = "나의 이름은 : "+name+"이고 나이는 "+age+"살입니다";
		
		resp.setContentType("text/html; charset=UTF-8");
		resp.getWriter().print(resultStr);
		
	}
	//2.응답할 데이터를 문자열로 반환하기
	//기존에 문자열로 반환하는 작업을 할땐 viewResolver가 해당 페이지를 찾아준느 처리를 하게 되었다
	//때문에 문자열을 그대로 돌려주기 위해서는 지금 return하는 데이터는 데이터 자체로 돌려줘라 라는 어노테이션을 
	//부여하여야 한다. 해당 어노테이션은
	//@ResponseBody 이다
	/*
	@ResponseBody
	@RequestMapping(value="ajax2.do",produces="text/html; charset=UTF-8")
	public String ajaxMethod2(int userNo) {
		//Member m = memberService.selectMember(userNo);
		String resultStr = "이름은 : 장재혁 나이는 15살 ";
		
		return resultStr;
	}
	*/
	
	//@RequestMapping("ajax.do")
	//public String ajaxMethod2(int userNo
	//						  ,HttpServletResponse resp) throws IOException {
	
		//다수의 데이터를 응답해야 할때
		//객체화를 하여 전달해야한다. 이때 사용 되는 형식은
		//JSON 타입이다.
		//JSONObject - map과 유사
		//JSONArray - list와 유사
		
//		JSONObject jobj = new JSONObject();
//		
//		
//		jobj.put("name","박서준");
//		jobj.put("age",30);
//		jobj.put("gender", "남자");
//		
//		resp.setContentType("application/json; charset=UTF-8");
//		
//		resp.getWriter().print(jobj);		
		
	//	return "";
//}
	@ResponseBody
	@RequestMapping(value="ajax2.do",produces="application/json; charset=UTF-8")
	public String ajaxMethod2(int userNo) {
		
		//Member m = new MemberService.selectMember(userNo);
		Member m = new Member("김하늘",10,"여자");
		
		JSONObject jobj = new JSONObject();
		jobj.put("name",m.getName());
		jobj.put("age", m.getAge());
		jobj.put("gender", m.getGender());
		
		//gson 이용해보기
		
		
		
		System.out.println(jobj);
		System.out.println(jobj.toJSONString());
		//return jobj.toJSONString();//json 객체를 문자열로 변환해준다
		
		//Gson으로 이용해보기
		return new Gson().toJson(m);
	
	}
	/*
	@ResponseBody
	@RequestMapping(value="ajax3.do",produces="application/json; charset=UTF-8")
	public String ajaxMetod3() {
		//회원목록/게시글목록 등등
		//만약 버전 이슈가 생길경우 
		// 프로젝트 우클릭 한다음 프로퍼티 가서 projectfacets 가서 버전 바꾸자
		
		ArrayList<Member> list = new ArrayList<>();
		
		list.add(new Member("둘리",50,"중성"));
		list.add(new Member("장재혁",26,"남성"));
		list.add(new Member("이채현",80,"여성"));
		list.add(new Member("담배",1500,"좋다"));
		
		 return new Gson().toJson(list);
		
		System.out.println(new Gson().toJson(list));
		
	}
	*/
	@ResponseBody//에이젝스를 쓸꺼면 너는 필요해
	@RequestMapping(value="ajax3.do",produces="application/json; charset=UTF-8")//그냥 넘겨줘도 되는데 produces 
																				//설정만 하면 json 타입만 잘 ㅅ설정하자
	public ArrayList<Member> ajaxMetod3() {
		//회원목록/게시글목록 등등
		//만약 버전 이슈가 생길경우 
		// 프로젝트 우클릭 한다음 프로퍼티 가서 projectfacets 가서 버전 바꾸자
		
		ArrayList<Member> list = new ArrayList<>();
		
		list.add(new Member("둘리",50,"중성"));
		list.add(new Member("장재혁",26,"남성"));
		list.add(new Member("이채현",80,"여성"));
		list.add(new Member("담배",1500,"좋다"));
		
		 return list;
		
		
		
	}
	
	
	
	
	
	
}
