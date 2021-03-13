<%-- 
0312_[10] placeholder, autofocus, <SELECT> ~ <OPTION>, RADIO, CHECKBOX, FIELDSET 태그 실습
 [01]  SELECT ~ OPTION 태그의 활용

1. 0311_t5_select_form 내용

2. 3박 4일 해외 여행지 선택 : Option 버튼에서 한가지 이상 선택하기
 A) <SELECT name="travel2" multiple="multiple">
 A1) SELECT 문에 multiple="multiple" 속성의 사용
 A2) Ctril + 마우스 클릭: 다중 선택   /  Shift + 마우스 클릭: 영역 다중 선택 
 
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>t6_select_form2</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 28px;}
</style>
</head>
<body>
  <form name='frm' action='./t6_select_proc2.jsp' method='GET'>
    <H2>주말 여행지 선택</H2>
   
   1박 2일 국내 여행 직접 입력:
    <input type='text' name='travel1' placeholder="ex)동해등 입력하시오." 
               autofocus="autofocus" style="width: 50%;"
               value= "오이도">  <br>
               <%-- placeholder="도움말": 입력 도움말 출력 --%>
               <%-- value(기본값)과 placeholder(설명 문)는 같이 사용 no --%>
    
    <%-- Option 상자 만들기 --%>
    3박 4일 해외 여행지 선택:
    <SELECT name="travel2" multiple="multiple">
      <%-- selected="selected  : 옵션버튼에서 default로 보여주는 역할 --%>
      <option value="A01" selected="selected">캐나다</option>  <%-- Option = 선택값   Value = (값)>라벨< --%>
      <option value="A02">베트남</option>
      <option value="A03">호주</option>
      <option value="A04">이탈리아</option>
      <option value="A05" >한국</option>
      <option value="A06">스위스</option>
      <option value="A07">스페인</option>
      
    </SELECT>
 
    <br>
     <BUTTON type="submit">신청</BUTTON>
  </form>
</body>
</html>