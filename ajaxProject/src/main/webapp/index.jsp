<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>Spring에서 AJAX 사용법</h1>
		<h3>1. 요청시 전달값,응답 결과 받아보기</h3>
		
		이름 : <input type="text" id="name"> <br>
		나이 : <input type="number" id="age"><br>
		<button onclick="test1();">전송</button>
		
		<div id="result1"></div>
		
		<script>
		function test1(){
			$.ajax({
				url: "ajax1.do",
				data : {
					name : $("#name").val(),
					age : $("#age").val()
					
				},
				success : function(result){
					console.log(result);
					
					$("#result1").html(result);
				},
				error : function(){
					console.log("통신오류");
					
				}
				
			});
			
		}
		
		
		</script>
		<h3>2.조회요청후 조회된 회원 객체를 받아 출력해보기</h3>
		조회할 회원 번호 : <input type="number" id="userNo">
		
		<button id="btn">조회</button>
		
		<div id="result3"></div>)
		
		<script>
		$("#btn").click(function(){
			
			$.ajax({
				url : "ajax2.do",
				data : {
					userNo : $("#userNo").val()
					
				},
				success : function(result){
					
					var str="";
					for(var i in result){
					str+="<ul>"
						+"<li>"+result[i].name+"</li>"
						+"<li>"+result[i].age+"</li>"
						+"<li>"+result[i].gender+"</li>"
						+"</ul>";
					}
					
					$("#result3").html(str);
					
				},
				error : function(){
					
					
				}
				
				
				
			});
			
			
		});
		</script>
		
		<h3>3. 조회 요청 후 응답된 리스트를 출력해보기</h3>
		
		<button onclick="test3();">버튼</button>
		<div id="result3"></div>
		
		<script>
		function test3(){
			
			$.ajax({
			
				url: "ajax3.do",
				success : function(result){
					
					var str="";
					for(var i in result){
					str+="<ul>"
						+"<li>"+result[i].name+"</li>"
						+"<li>"+result[i].age+"</li>"
						+"<li>"+result[i].gender+"</li>"
						+"</ul>";
					}
					
					$("#result3").html(str);
					
				},
				error : function(){
					console.log("통신오류");
				}
				
				
				
			});
			
			
			
			
			
		}
		</script>
		
		
		
</body>
</html>