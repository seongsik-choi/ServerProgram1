<%-- 
0311_ pay_form(FORM)과 pay_proc(ACTION)을 통한 급여처리 실습
[출력 화면]
급여 처리
본봉: ￦3,000,000원
수당: ￦500,000원
총액: ￦3,500,000원
세금(10%): ￦350,000원
실수령액: ￦3,150,000원
근무일: 2021-03
년봉: ￦37,800,000원
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
<%
 int pay = Integer.parseInt(request.getParameter("pay"));  // 입력할 본봉
 int su = Integer.parseInt(request.getParameter("su"));    // 입력할 수당
 int tot =  pay + su;  // 총액
 int tax = (int)(tot*0.1);  // 세금
 int year = (tot-tax)*12;
 
 DecimalFormat df = new DecimalFormat("￦#,###,###원");  // 기부금에 대한 DecimalFormat
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM"); // 날짜
 String date = sdf.format(new Date());  // 날짜 형식도 문자열로 형변환 필요.
%> 

<H2>급여 처리</H2>
<DIV>
  본봉: <%=df.format(pay) %><BR>
  수당: <%=df.format(su) %><BR>
  총액: <%=df.format(tot) %><BR>
  세금(10%): <%=df.format(tax) %><BR>
  실수령액: <%=df.format(tot-tax) %><BR>
  근무일: <%=date %><br>
  년봉: <%=df.format(year) %>
</DIV>
 
</body>
</html>