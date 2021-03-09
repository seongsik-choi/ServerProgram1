<%-- 0309_script4.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" %>
 <%-- 
 1. 표현식(Expression) 
   - 단순 출력 기능.
    <st out.println(name); st> -> <st=name st> 
   - 문장 종결자(';')을 사용 no
   - 오로지 하나의 값만 출력 가능
   - HTML 코드 안에서만 사용 가능
  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 조회</title>
<style type="text/css">
  *{font-family: 맑은 고딕; font-size: 26px;}
</style>
</head>

<body>
 <% // 스크립틀릿
String name = "아로미";
int kor = 90;
int eng = 70;
int mat = 80;
int tot = kor + eng + mat;
int avg = tot / 3;
%> // 스크립틀릿
 
 <%-- 
 <st out.println(name); st> -> <st=name st>  
  - 최소한의 JAVA 코드를 사용해 디자인
 --%>
성적 조회: <%=name %>
<OL>
  <LI>국어: <%=kor %></LI>
  <LI>영어: <%=eng %></LI>
  <LI>수학: <%=mat %></LI>
</OL>
총점: <%=tot %><BR>
평균: <%=avg %><BR>
</body>
</html>