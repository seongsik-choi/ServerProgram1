<%-- 0309_script7.jsp
 1. 메소드 선언문 <%! Method %>
   - Scriptlet(스크립틀릿)에는 메소드를 선언할 수 없음.
   - 메소드(함수) 선언: <%! ...JAVA 메소드... %>
   - 이런 메소드 선언은 빈즈라는 클래스로 분리되어 개발됨.
   ex)전달받은 파일명이 이미지인지 검사하여, return하는 메소드를 구현
   
   2. 전달받은 파일명이 이미지인지 검사하여 리턴하는 메소드를 구현
   - JAVA(if~else) 문법과 HTML Tag를 함꼐 사용하는 방법
   -> 하단 참조! 중요!
   
   3. HTML 태그는 대소문자 구분 no -> 값은 대소문자 구분
   <IMG src = "./images/coffee06.jpg"> = <img src = "./images/coffee06.jpg">
--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%-- Method 선언을 위해 스크립틀릿 앞에  ! 필수--%>
<%! 
 public boolean isImage(String fname){      // 이미지의 확장자를 알아보기 위한 Method
  // Console
 /*  System.out.println("--> fname.toLowerCase() " + fname.toLowerCase());
  System.out.println("--> fname.endsWith(\".jpg\"):  " + fname.endsWith("jpg"));
  System.out.println("--> fname.endsWith(\".gif\"):  " + fname.endsWith("gif"));
  System.out.println("--> fname.endsWith(\".png\"):  " + fname.endsWith("png")); */
  
  fname  = fname.toLowerCase();   // 소문자로 변경
  if (fname.endsWith(".jpg") || fname.endsWith(".gif") || fname.endsWith(".png")){
    // if (fname.endsWith(".jpg")  == true {
    // .endsWith()는 문자열이 특정 문자열로 끝나는지 확인
    return true;
  }else{
    return false;
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
<HR>
<%  // 자바코드를 위한 스크립틀릿
if (isImage("coffee04.jpg") == true){   // if (isImage("COFFEE04.jpg")){
  // System.out.println("coffee04.jpg 이미지"); // Console
%> <%-- JAVA가 끝났기에 끊기 --%>
    <IMG src = "./images/coffee04.jpg">
<%   // if문을 연결하기위해 JAVA 태그 연결
}     // if문 종료
%>  <%-- if문을 연결하기위해 JAVA 태그 연결 --%>

<HR>
<%-- if~ else 문과 HTML 태그 함께 사용 --%>
<%  // 자바코드 작성
if (isImage("coffee05.jpgx") == true){  
%> 
    <IMG src = "./images/coffee05.jpgx">
    
<%   // 자바코드 연결
} else{
  out.println("이미지가 아닙니다");
}
%>  

<HR>
<%-- if~ else 문과 HTML 태그 함께 사용 --%>
<%  // 자바코드 작성
if (isImage("coffee06.jpg") == true){  
%> 
    <IMG src = "./images/coffee06.jpg">
    
<%   // 자바코드 연결
} else{
  out.println("이미지가 아닙니다");
}
%>  

</body>
</html>