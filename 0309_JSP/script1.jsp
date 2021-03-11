<%-- 0309_script1.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%-- .jsp라는 명시, Endcoding 설정 
      1) jsp의 변환 과정(jsp -> java)
         jsp -> java -> class 변환 -> class 실행 -> html 출력
         실행 : 우마 -> run as -> run on server
--%>
 <%-- Tree Structure
  :/HOME/WS_FRAME/JSP_TEST
├─.settings    <-- Eclipse에서 관리
├─build
│  └─classes
│      └─jsp_test  <-- 컴파일된 JAVA class
├─src
│  └─jsp_test      <-- JAVA 소스
└─WebContent
    ├─core           <-- JSP
    ├─META-INF
    └─WEB-INF     <-- web.xml등 환경 설정 파일
        └─lib         <-- 데이터베이스 Driver등 저장    
  --%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <!-- HTML 문서의 문자 인코딩 방식을 명시
                                         문자셋인 UTF-8이 가장 많이 사용  -->
<title>script.jsp</title> <!-- browser의 tap에 print -->
</head>
<body>

<% // 스크립틀릿
String name = "성식1";
int kor = 90;
int eng = 70;
int mat = 80;
int tot = kor + eng + mat;
int avg = tot / 3;

System.out.println("-->성명: " + name);   // System.out: 표준 출력 장치, 모니터 콘솔
                                                        // 성명: 성식
// out: web 출력
out.println("WEB");
out.println("성명: " + name);
out.println("국어: " + kor);
out.println("영어: " + eng);
out.println("수학: " + mat);
out.println("총점: " + tot);
out.println("평균: " + avg);
//스크립틀릿
%> 
</body>
</html>