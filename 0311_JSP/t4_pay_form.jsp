<%-- 
0311_ pay_form(FORM)과 pay_proc(ACTION)을 통한 급여처리 실습
 - GET 방식의 처리
1. 급여 처리
   - 입력 폼
      . 본봉: 2000000  <- TEXT or NUMBER(권장)
      . 수당: 300000   <- TEXT or NUMBER(권장)
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
<H2>급여 처리</H2>
<form name='frm' action='./t4_pay_proc.jsp' method='GET'>
  본붕<INPUT type='number' name='pay' 
        min='0' max='10000000' step=10000 value='2200000'            
        style='width: 20%' autofocus="autofocus"><BR>
        
  수당<INPUT type='number' name='su' 
        min='0' max='10000000' step=10000 value='300000'            
        style='width: 20%'><BR>      
        
 <BUTTON type="submit">처리 진행</BUTTON>
</form>
 
</body>
</html>