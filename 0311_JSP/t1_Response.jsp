<%-- 
0311_[08] response 내부 객체, out 내부 객체, application 내부 객체의 사용 
 [01] response 내부 객체  : request처럼 HTTPServletRequest Interface를 서버(Tomcat)가 구현한 객체
  - javax.servlet 
     Interface ServletResponse
          ㄴ javax.servlet.http.HttpServletResponse 
          Interface를 Tomcat등 서버가 구현한 객체, 자동화된 객체, 개발자는 가져다 사용!!
        
    + JAVA interface, 
       1) Abstract class(구현할 method -> public void disp();    // public void func(){} 멤버메소드 선언불가
       2) Extends class -> extends 받고, @Override disp(){}
          
   - 처리 결과를 클라이언트(웹 브러우저)에게 출력할 목적
   - out 내부 객체는 response 객체로부터 생성
   - sendRedirect(): 데이터 처리를 한후 특정 페이지로 자동으로 주소 이동.
    
   HTTP Client(Chrome) / HTTP Server(Tomcat) + Internal Process(Jsp)
   
   + null과 null이 아닌것의 차이점(하단 JAVA Source)
   ex) 
   String url = null;   // java.lang.NullPointerException : 메모리 할당받지못함
   if(url == null) {
     System.out.println("url이 메모리 할당을 받지 못함");
   }// if end
  url = "";
  if(url.length()==0)
  System.out.println("url의 값이 없음(\"\")");
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
<H1>response 내부 객체</H1>
 <%
 String url = request.getParameter("url");    //  getParameter(사용자가 입력한 데이터 전달)
 System.out.println("url : " + url);  // ◁─ url: null
/* 
 - null과 null 아닌것(" ")의 차이
 - null : 메모리 할당을 받지 못함  / " " : 메모리 할당은 받음
*/
 if (url.equalsIgnoreCase("kma")) {       // equalsIgnoreCase()
    response.sendRedirect("http://www.kma.go.kr"); // 주소 이동(Response)
   // 내부객체인 response를 선언으로만 사용
 } else if (url.equalsIgnoreCase("daum")) {
   response.sendRedirect("http://www.daum.net"); // 주소 이동(Response)
 } else if (url.equalsIgnoreCase("kyobobook")) {
   response.sendRedirect("http://www.kyobobook.co.kr"); // 주소 이동(Response)
 }
 %>
  URL :<%= url %>
</body>
</html>