<%-- 
0318_
 JSP Model 1 기반 웹사이트
 3) JSP : SungjukVoTest.java 코드를 스크립틀릿으로 이동, JSP에 맞게 변경
  ▷ /jsp-test/WebContent/beans/sungjuk2.jsp
  
  -> sungjukService.java 활용 : Call By Reference 기법을 이용한 객체의 전달
  -> sungjuk.jsp 변형
 <%@page import="beans.SungjukService"%> : import 필요!
 <%@page import="beans.SungjukVO"%>  : import 필요!

--%>
<%@page import="beans.SungjukVO"%>
<%@page import="beans.SungjukService"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>sungjuk2.jsp</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 30px;}
  .container{
    height: 700px;
    width : 400px;
    background-color: #FF0000;
  }
</style>
</head>
<body>
<DIV class='container'>
<DIV class='content'>
 <%
 SungjukVO sungjukVo = new SungjukVO();
 //sungjukVo.name = "왕눈이";  // error. private 변수로 선언되어 다른 클래스에서 사용 불가능
 
 sungjukVo.setName("최성식");
 sungjukVo.setJava(90);
 sungjukVo.setJsp(90);
 sungjukVo.setSpring(90);

 //   1. Service(Process) class
 //  Call By Reference 기법을 이용한 객체의 전달
 SungjukService sungjukService = new SungjukService(sungjukVo);
 sungjukService.tot();
 sungjukService.avg();
 %>
 
 신입 직원 성명: <%=sungjukVo.getName() %><br> 
--------------------------------<br>
JAVA: <%=sungjukVo.getJava() %><br>
JSP: <%=sungjukVo.getJsp() %><br>
SPRING: <%=sungjukVo.getSpring() %><br>    
총점: <%=sungjukVo.getTot() %><br>
평균: <%=sungjukVo.getAvg() %><br>
 
</DIV> <!-- content END -->
</DIV> <!-- container END -->
 
</body>
</html>