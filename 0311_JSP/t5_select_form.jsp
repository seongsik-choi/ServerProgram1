<%-- 
0311_[10] placeholder, autofocus, <SELECT> ~ <OPTION>, RADIO, CHECKBOX, FIELDSET 태그 실습
 [01]  SELECT ~ OPTION 태그의 활용
 - 한글 변환: request.setCharacterEncoding("utf-8"); 
 - TEXT로 입력을 받으면 사용자가 다양한 값을 입력하여처리 규칙을 만들기가 힘듬, 
    따라서 지정된 데이터만 입력받도록  제한을 가하는 기능
 - EX)
    <select name="travel2">
      <option value="태국">태국</option>
      <option value="베트남">베트남</option>
      <option value="호주" selected="selected">호주</option>
    </select>
   
1. 여행 등록
   - 태그 속성 placeholder="동해등 입력": 입력 도움말 출력
                autofocus="autofocus": 커서를 원하는 입력 태그로 이동
                selected="selected  : 옵션버튼에서 default로 보여주는 역할

--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 28px;}
</style>
</head>
<body>
  <form name='frm' action='./t5_select_proc.jsp' method='GET'>
    <H2>주말 여행지 선택</H2>
   
   1박 2일 국내 여행 직접 입력:
    <input type='text' name='travel1' placeholder="ex)동해등 입력하시오." 
               autofocus="autofocus" style="width: 50%;">  <br>
               <%-- placeholder="도움말": 입력 도움말 출력 --%>
    
    <%-- Option 상자 만들기 --%>
    3박 4일 해외 여행지 선택:
    <SELECT name="travel2">
      <option value="태국">태국</option>  <%-- Option = 선택값   Value = (값)>라벨< --%>
      <option value="베트남">베트남</option>
      <option value="호주">호주</option>
      <option value="한국">보여지는값</option>
      <option value="한국전달값" selected="selected">한국</option>
      <%-- selected="selected  : 옵션버튼에서 default로 보여주는 역할 --%>
    </SELECT>
 
    <br>
     <BUTTON type="submit">신청</BUTTON>
  </form>
</body>
</html>