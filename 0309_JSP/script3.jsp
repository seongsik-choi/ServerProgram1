<%-- 0309_script3.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" %>
 <%-- 
 1. HTML 기반 JSP 결과 출력
 -> scriptlet 내부에 java 변수 명시
 -> HTML 태그 출력을 java 코드에서 분리
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

 <% // 스크립틀릿(변수 명시)
String name = "성식3";
int kor = 90;
int eng = 70;
int mat = 80;
int tot = kor + eng + mat;
int avg = tot / 3;
%>

 <%-- 
 ex) <OL>과 같은 태그 생성시 open tag시 close 태그 자동으로
 작성) 출력문 스크립틀릿open 스클립틀릿 내용  스크립틀릿close
  --%>
성적 조회: <% out.println(name); %>
<OL>
  <LI>국어: <% out.println(kor); %></LI>
  <LI>영어: <% out.println(eng); %></LI>
  <LI>수학: <% out.println(mat); %></LI>
</OL>
총점: <% out.println(tot); %><BR>
평균: <% out.println(avg); %><BR> 
</body>
</html>