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
 /* [실행 화면]
C:\ai8\ws_frame\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jsp_test\
C:\ai8\ws_frame\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jsp_test\core\images
C:\ai8\ws_frame\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jsp_test\core\images\x
폴더가 존재하지 않음
 */
 // 1) 서비스상의 절대 경로 산출 : 실제 실행이 동작하는 폴더!
 String dir = "/";    // root dic(경로 확인)
 String abs_dir = application.getRealPath(dir);  // 실제 경로 가져옴
 out.println(abs_dir);
 out.println("<br><br>");
 /* 
 C:\ai8\ws_frame\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jsp_test\
   -> metadata : 개발자가 접근 못하는 폴더
   -> workSpace는 2영역으로 분류 
    1) 개발 영역(jsp_test, oop, Servers 등)
    2) 서비스 영역(.metadata)
    A) 결국 서비스상에서 절대경로 산출됨
 */
  
 // 2)절대 경로 산출
 dir = "/core/images";    // root dic
 abs_dir = application.getRealPath(dir);  // 절대 경로 가져옴.
 out.println(abs_dir);
 out.println("<br><br>");
 
 // 3) 존재하지않는 폴더 경로 산출
 dir = "/core/images/x";    // 존재하지않은 폴더지만 -> 실제 존재하는것처럼 보임
 abs_dir = application.getRealPath(dir);  // 절대 경로 가져옴(검사X)
 out.println(abs_dir);
 out.println("<br><br>");

 // 4) 절대 경로가 존재하는지 확인
 File folder = new File(abs_dir);   // File.io imort 필요
 if (folder.exists()) {
   out.println("폴더가 존재함");
 } else {
   out.println("폴더가 존재하지 않음");
 }
 %>

</body>
</html>