<%-- 0309_script8.jsp
 1. 메소드 개선(script7의 복잡함을 개선)
  - script7과 같이 JAVA code를 많이 사용하는 경우 디자이너 입장에서 복잡
    -> script8과 같이 JAVA 코드를 최대한 지양
   1)  isImage Method를 Stirng type으로 변경
    return을 <IMG> Tag로
  
   2) JAVA Code 부분을 <%= JAVA 코드 %>
   
   3) JSP -> HTML 전달 : JSP가 호출되고, 웹에 출력은 HTML만
   return "<IMG src = ''>";
   ->  return "<IMG src = './images/"+fname+"'>";
   // <img src="./images/coffee06.jpg">  -> element 확인 시 정상적으로 fname 출력.
   
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%-- Method 선언을 위해 스크립틀릿 앞에  ! 필수--%>
<%! 
 public String isImage(String fname){     
  fname  = fname.toLowerCase();  
  if (fname.endsWith(".jpg") || fname.endsWith(".gif") || fname.endsWith(".png")){
    return "<IMG src = '../images/"+fname+"'>";  //  TAG안에 Single quote
  }else{
    return "이미지가 아닙니다.";
  }
}
%> <%-- Method end --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  *{ font-family: 맑은 고딕; font-size: 26px;}
</style>
</head>

<body>
<%--  2) JAVA Code 부분을 <%= JAVA 코드 %> --%>
<%= isImage("coffee04.jpg") %>    <%-- <IMG src = ''> 호출 --%>
<HR>
<%= isImage("COFFEE05.jpgx") %>
<HR>
<%= isImage("coffee06.jpg") %>     <%-- <IMG src = ''> 호출 --%>

</body>
</html>