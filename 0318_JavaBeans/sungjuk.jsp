<%-- 
0318_
 JSP Model 1 기반 웹사이트
 3) JSP : SungjukVoTest.java 코드를 스크립틀릿으로 이동, JSP에 맞게 변경
  ▷ /jsp-test/WebContent/beans/sungjuk.jsp

 <%@page import="beans.SungjukVO"%>  : import 필요!
--%>
<%@page import="beans.SungjukVO"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>sungjuk.jsp</title>
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
 
 /* setter와 getter 호출 */
 sungjukVo.setName("최성식");
 sungjukVo.setJava(90);
 sungjukVo.setJsp(90);
 sungjukVo.setSpring(90);
 sungjukVo.setTot(0);  // getTot에서 정의해둔 tot = (java+jsp+spring); 호출해 계산
 // sungjukVo.setTot(sungjukVo.getJava() + sungjukVo.getJsp() + sungjukVo.getSpring());
 sungjukVo.setAvg(0); // getAvg도 마찬가지
 
 String name = sungjukVo.getName(); 
 int java = sungjukVo.getJava();
 int jsp = sungjukVo.getJsp();
 int spring = sungjukVo.getSpring();
 int tot = sungjukVo.getTot();
 int avg = sungjukVo.getAvg();
 
 System.out.println("이름 : "+ name + "\njava점수 : " + java + 
                           "\njsp점수 : " + jsp + 
                            "\nspring점수 : " + spring +
                           "\n총점 : " + tot + "\n평균 : " + avg);  // Console
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