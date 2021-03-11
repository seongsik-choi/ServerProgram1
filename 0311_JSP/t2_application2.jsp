<%-- 
0311_
[02] out 내부 객체 
 - java.lang.Object
       extended by ㄴ  java.io.Writer
          extended by ㄴ  javax.servlet.jsp.JspWriter Class의 객체 
   - out 객체는 response객체에서 생성
   - out.print("접속에 성공했습니다.")   :  생성되는 HTML이 모두 한줄로 출력, 소스 분석 어려움 
    
   - out.println("접속에 성공했습니다.")  : 생성되는 HTML 코드라인을 변경
     
   - System.out.print(), System.out.println()은 디버깅 정보를 콘솔창에 출력하는 용도
     (변수의 변화를 추적하기 위한 용도, 관리, 에러 수정, 개발종료 후 주석 처리) 
 
  1. J2EE API를 사용해 syso 사용  
    - http://docs.oracle.com/javaee/6/api/
    - http://docs.oracle.com/javaee/7/api/
    --> javax.servlet.jsp 패키지 검색
   --> JspWriter Class 확인
   
[03] application 내부 객체 
   - javax.servlet.ServletContext 인터페이스의 구현 객체 
   - 서블릿이 서블릿 컨테이너(Tomcat)에서 실행 될 때의 환경 정보를 저장 
   - 절대 경로 추출시 사용(자료실등 파일 입출력 시 필요)
     
     String upDir = "/pds/storage"; 
     upDir = application.getRealPath(upDir);  // 모든 사용자가 공유하는 값을 저장할 경우.

    * 절대 경로
     . Windows: C:/HOME/setup/test.txt
     . Linux     : /home/hosting_users/ai7/setup/test.txt
 
    * 상대 경로
     . Windows: ./setup/test.txt, ../test.txt, test.txt등
     . Linux     : ./setup/test.txt, ../test/txt, test.txt등
 
    * Eclipse에서의 작업 폴더
      C:/ai8/ws_java/jsp_test/WebContent/core/images
 
    * jsp 실행 폴더, 서비스 폴더, 화면에 출력되는 내용이 있는 폴더
      C:/ai8/ws_java/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps
      /jsp_test/core/images
  
   -> metadata : 개발자가 접근 못하는 폴더
   -> workSpace는 2영역으로 분류 
    1) 개발 영역(jsp_test, oop, Servers 등)
    2) 서비스 영역(.metadata)
--%>
<%@page import="java.io.File"%>
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
 <%
 int count = 0; // 접속자수
 Object obj = application.getAttribute("count"); // 접속자를 읽어들임(입력 값)
 out.println("obj : " +obj + "<BR>"); 
 if(obj == null){
   count =1; // 접속자++
 }else{
   out.println("접속자수 증가하였습니다.");
   count = (Integer)obj; // obj를 -> int로 변환하여 접속자에 대입
   count++;
 }
  // Object obj = 1; // int -> Integer -> Object
  // JSP는 양쪽 타입이 같아야지 error no
  System.out.println(obj); // Console. Obejct -> Integer -> int
  out.println("접속자 : " + count);
  application.setAttribute("count", new Integer(count)); // 키(접속자 수),  값
 %>

</body>
</html>