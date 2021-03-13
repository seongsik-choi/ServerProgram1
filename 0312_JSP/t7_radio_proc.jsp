<%-- 
0312_t7_radio_form.jsp의 Action 부분
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>radio_proc</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
  축제 예약<br>
  ----------------------------------------<br>
  축제: <%=request.getParameter("festival") %><br>
  참가인원: <%=request.getParameter("count") %> 명<br>
  
  <%-- radio 버튼이 선택이 되지않은 경우-> 메모리 참조 no(null)
           Q) 선택되지않는 경우, if~else문을 통해 메시지 출력--%>
  통신사: 
  <% 
  String mobile =request.getParameter("mobile");
  if(mobile== null){
  %>
     <!-- <DIV style="color:#FF0000;">통신사를 입력하세요.</DIV> -->
    <span style="color:#FF0000;">통신사를 입력하세요!</span>
  <%
  }// end if
  else {
  %>
      <span><%= mobile %></span>
  <%
  }// end else
  %> <br>
 
  번호: <%=request.getParameter("mobileno") %><br>
  <br>
  <A href='./t7_radio_form.jsp'>예약 계속</A>
</body>
</html>