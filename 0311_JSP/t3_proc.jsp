<%-- 
0311_Form.jsp의 action 부분
 - GET방식의 구현 : 폼에 데이터 입력 후 등록 시 -> url에 데이터 값 명시
  ex) http://localhost:9090/..proc.jsp?title=봄content=&donate=0&password=
  
  1) 문자열 형 날짜 출력 form 참고
     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); // 날짜
     String date = sdf.format(new Date());  // 날짜 형식도 문자열로 형변환 필요.
 
 2) FROM.jsp의 type이 Number인 경우, min, max, step의 지정 
     <input type='number' name='period' min='최소값' max='최대값' step='값의 간격' value='초기값'>
      step(위, 아래) 클릭시 500원씩 증가, 900입력 시 MIN(1000)원 입력하라 팝업
     
 3)  type : number인 경우 JSP로 받을 때 형변환 필수!!! Integer.parseInt
      getParameter는 String 형이기에 형변환 필수!!
 
--%>
<%@page import="java.text.DecimalFormat"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>뉴스 등록 처리</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
<%
 String title = request.getParameter("title");  // action을 통해 입력받은 데이터 전달
 // 제목: <%=title 퍼센> -> : title에 '봄' 입력 후 등록 ->
 // http://localhost:9090/..proc.jsp?title=봄content=&donate=0&password=
//  title=봄  : 이처럼 url에 입력한 데이터가 전달되는것을 GET 방식이라고 한다.
 
 String content = request.getParameter("content");  // action을 통해 입력받은 데이터 전달
 String password = request.getParameter("password");  // action을 통해 입력받은 데이터 전달
 
 //String donate = request.getParameter("donate");  // action을 통해 입력받은 데이터 전달 
 // donate type='number' 이었기에 int형으로 데이터 전달
 int donate = Integer.parseInt(request.getParameter("donate"));
 
 DecimalFormat df = new DecimalFormat("￦#,###,###원");  // 기부금에 대한 DecimalFormat
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); // 날짜
 String date = sdf.format(new Date());  // 날짜 형식도 문자열로 형변환 필요.
 
%>
<H1>주요 뉴스</H1>
<UL>
   <LI>제목: <%=title %></LI>
  <LI>내용: <%=content %></LI>
  <LI>패스워드: <%=password %></LI>
  <LI>기부금: <%=df.format(donate) %></LI>
  <LI>등록일: <%=date %></LI>
</UL>
</body>
</html>