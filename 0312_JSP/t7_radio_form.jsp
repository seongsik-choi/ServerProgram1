<%-- 
0312_[02] RADIO 태그 
 - 여러개의 선택 항목중 하나만 선택 가능
 - checked="checked": 기본 선택 속성 
    예) 주소, 성별, 부서의 선정등

 - <label> radio 태그과 문자열 레이블을 그룹화하여 클릭 이벤트 지원
 - checked="checked": 기본 선택  
 - null 체크 방법
    <% if (license1 != null){ %>
         <LI><%=license1 %></LI>
    <% } %>
 - EX)
  <label style="cursor: pointer;">
  <input type='radio' name='license' value='정보처리 관련 자격증' checked="checked">
     정보처리 기사/산업기사/기능사
  </label><br>
  
1. 축제 참가 예약 시스템 제작 
- 여러개의 선택 항목중 하나만 선택 가능
- checked="checked": 기본 선택 속성
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>radio_form</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
 <H2>축제 예약</H2>
  <form name='frm' action='./t7_radio_proc.jsp' method='POST'>

 축제 :
 <LABEL style="cursor: pointer;">
  <input type='radio' name='festival' value='산수유 축제' checked="checked">산수유 축제</LABEL>
                                                                 <%-- checked="checked": 기본 선택 속성 --%>
  <LABEL style="cursor: pointer;">
  <input type='radio' name='festival' value='매화 축제' >매화 축제</LABEL>
 
 <LABEL style="cursor: pointer;">
  <input type='radio' name='festival' value='연꽃 축제' >연꽃 축제</LABEL>
  
  <LABEL style="cursor: pointer;">
  <input type='radio' name='festival' value='빙어 축제' >빙어 축제</LABEL>
  
  <LABEL style="cursor: pointer;">
  <input type='radio' name='festival' value='한우 축제' >한우 축제</LABEL><BR>
  
 참가인원 : <INPUT type='number' name='count' 
        min='1' max='100' step=1  placeholder="ex) 1(숫자만입력)" style='width: 30%' ><BR>
        
 통신사 :
 <LABEL style="cursor: pointer;">
  <input type='radio' name='mobile' value='SKT'>SKT</LABEL>
                                                                 <%-- checked="checked": 기본 선택 속성 --%>
  <LABEL style="cursor: pointer;">
  <input type='radio' name='mobile' value='KT' >KT</LABEL>
 
 <LABEL style="cursor: pointer;">
  <input type='radio' name='mobile' value='LGU+' >LGU+</LABEL>        
 
 <LABEL style="cursor: pointer;">
  <input type='radio' name='mobile' value='알뜰폰' >알뜰폰</LABEL><BR>
  
 전화번호: 
 <input type='text' name='mobileno' placeholder="ex) -없이 입력하시오 01099999999" 
            style='width: 60%' >
    
   <BUTTON type="submit">예약</BUTTON>
  
  </form>
</body>
</html>