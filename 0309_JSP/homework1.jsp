<%-- 0309_이미지 목록을 배열에 저장한 후 출력하는 스크립트를 작성
  1) 이미지를 '/WebContent/core/images' 폴더를 생성합니다.
  
  2) 기존의 이미지를 사용하거나 구글 이미지 검색에서 튜울립등
      기타 이미지를 검색하여 10장의 이미지를 저장합니다.
   
  3) jsp 파일을 생성하고 1차원 배열을 선언하여, 이미지 파일명을 전부 저장합니다.
     예) images[0] = "./images/tu01.jpg";

  4) for문을 이용하여 이미지 파일명을 한줄의 문자열로 출력하세요.

  5) for문을 이용하여 이미지 파일명을 5의 배수를 구하여
     라인 변경을 합니다. 
  6) 문자열로된 파일명을 <IMG> 태그를 이용하여 이미지로 출력합니다.
 
  7) 이미지 크기 동일하게 맞추기  style="width: 200px; height: 150px;"
 --%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for문 실습</title>
</head>
<body>

<%-- <H>태그 : 제목을 나타내는 태그 --%>
<H2> 음식 축제 </H2>

<% // JSP Code
String[] images = new String[10]; // 10개 배열 생성
images[0] = "./images/food1.jpg";     // 각 배열에 경로 지정
images[1] = "./images/food2.jpg";
images[2] = "./images/food3.jpg";
images[3] = "./images/food4.jpg";
images[4] = "./images/food5.jpg";
images[5] = "./images/food6.jpg";
images[6] = "./images/food7.jpg";
images[7] = "./images/food8.jpg";
images[8] = "./images/food9.jpg";
images[9] = "./images/food10.jpg";
%>

<% // JSP Code
for(int i=0; i<images.length; i++){
  out.print(images[i]);     // 4) for문을 이용하여 이미지 파일명을 한줄의 문자열로 출력
}
  for(int i=0; i<images.length; i++){
  if(i% 5 == 0 ){
%> 

    <BR> 
    
<%
  }// if end
%> 

  <%-- ex. 이미지 호출 <IMG src ="경로" style="스타일 지정"> --%>
  <%--  ex. 자바코드 작성 : <%= JAVA 코드 %>  --%>
  <IMG src = "<%=images[i]%>" style="wdith: 200px; height: 150px;">

<%
}// for end
%>


</body>
</html>