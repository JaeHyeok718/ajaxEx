<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<!--1. 회원가입 양식에서 회원가입 버튼을 클릭하면 post방식으로 result.html로 데이터를 전송하며 이동한다.

2. 아이디, 비밀번호, 비밀번호 확인, 이름은 반드시 입력해야 한다. o

3. 각항목은 라벨을 클릭해도 해당 입력 상자로 포커스 이동한다.(단 성별은 성별 글씨 클릭 시 해당 라디오만 선택되어야 한다.) 0

4. 아이디는 입력시 첫글자는 대문자이고 나머지 글자는 영문자, 숫자로 총 5글자 이상만 가능하다.

5. 아이디 input의 값이 변경되는 경우 체크한다.

- 아이디 조건 : 영어대/소문자/숫자만 사용하여 6글자이상 12글자 이하로 작성한다.(정규표현식 이용)

- 조건에 일치하는 경우 파란색으로 "사용가능한 아이디입니다."메세지를 아이디 input 옆에 보여준다.

- 조건에 일치하지 않는 경우 빨간색으로 "아이디는 영문자+숫자로 6~12글자로 작성하세요."메세지를 아이디 input 옆에 보여준다.

6. 비밀번호는 비밀번호 확인의 input 값이 변경되는 경우 체크한다.

- 비밀번호와 비밀번호 확인이 일치하는지 확인한다.

- 일치하는 경우 파란색으로 "비밀번호가 일치합니다."메세지를 비밀번호 확인 input 옆에 보여준다.

- 일치하지 않는 경우 빨간색으로 "비밀번호가 일치하지 않습니다."메세지를 비밀번호 확인 input 옆에 보여준다.

7. 아이디와 비밀번호의 조건이 올바르지 않고 회원가입 버튼 클릭 시 양식이 제출되지 않아야 한다.

8. 성별은 남/여 중 1개만 선택이 가능하다.

9. email은 email입력양식을 사용한다.-->
<body>
    
<fieldset>
<legend>회원가입</legend>
<table>
    <tr>
        <td><label for="inId">아이디</label></td>
        <td><input type="text" id="inId" min="5"  required>
        <span id="overLapIdCk">사용가능한 아이디입니다</span></td>
        
    </tr>

    <tr>
        <td><label for="inPwd">비밀번호</label></td>
        <td><input type="password" id="inPwd" required></td>
    </tr>
    <tr>
        <td><label for="inPwdCk">비밀번호 확인</label></td>
        <td><input type="password" id="inPwdCk" required>
        <span id="pwdCk">비밀번호가 일치합니다</span></td>
    </tr>
    <tr>
        <td><label for="inName">이름</label></td>
        <td><input type="text" id="inName" required></td>
    </tr>
    <tr>
        <td><label for="inGender">성별</label></td>
        <td><input type="radio" id="m" name="gender" value="M" ><label for="m">남</label>
            <input type="radio" id="f" name="gender" VALUE="F"><label for="f">여</label>
        </td>
        <tr>
            <td><label for="inEmail">이메일</label></td>
            <td><input type="email" id="inEmail"></td>
        </tr>
        <tr>
            <td align="center"colspan="2"><button type="button">회원가입</button></td>
        </tr>
       
       
  
</table>
</fieldset>



</body>
</html>