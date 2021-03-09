<%-- 0309_script2.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%-- 
1. 자바 코드상에서의 태그의 사용
   - 태그는 열리고 닫는 기능을 가짐
   - <BR>: 라인을 변경하는 목적으로 사용
   - <title>제목</title>: 브러우저 제목 표시줄에 출력할 문자열
   - 태그 : 문자열 과 같은 쓰임(+로 연결)
  
2. .jsp의 스크립트릿(scriptlet) 특징
   - Web 상 Element를 봐도 scriptlet 안의 JAVA source 보이지 않음
   - 출력은 무조건 HTML 형식으로 보여줌!
 --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>성적 조회</title>
<style type="text/css">
  *{ font-family: 맑은 고딕; font-size: 26px;}  <%--type--%>
</style>
</head>
<body>

<% // 스크립틀릿
String name = "성식2";
int kor = 90;
int eng = 70;
int mat = 80;
int tot = kor + eng + mat;
int avg = tot / 3;
System.out.println("이름 : "+ name);      // console
out.println("성적 조회: " + name);
out.println("<OL>");                                 //  Ordered List, 순서 있는 목록
out.println("  <LI>국어: " + kor + "</LI>");  // <LI>: List Item, 목록 항목을 나타냄(<BR> 기능을 가짐)
out.println("  <LI>영어: " + eng + "</LI>");
out.println("  <LI>수학: " + mat + "</LI>");
out.println("</OL>");
out.println("총점: " + tot + "<BR>");         // Enter
out.println("평균: " + avg + "<BR>"); 
%>
</body>
</html>