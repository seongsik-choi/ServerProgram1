<%-- 
0311_[09] GET, POST Form Data 전송 방식, TEXT, TEXTAREA, PASSWORD, CSS, type 기능
[01] Web 개발 Content 유형
1. 기능의 분류
 1) 입력 기능  - 댓글 입력, 회원 가입등  - 다음의 기사 등록, 옥션의 상품 등록
 2) 목록 기능  - 페이징 기능(1~2), 검색
 3) 조회 기능   - http://www.daum.net 뉴스 조회등  - 상품 조회
 4) 수정 기능  - 미디어 뉴스 수정 
 5) 삭제 기능  - 미디어 뉴스 삭제
 6) 검색 기능
 7) 페이징 기능
 8) 답변 기능(선택)  -  댓글

2. 권한의 분류
 - 기능의 차별화
 1) 사용자 - 목록, 조회등
 2) 중간 관리자  - 자신의 영역과 관련된 컨텐츠 처리 - 특정 부서의 직원들과 관련된 관리 - 웹사이트의 특정 부분의 뉴스등
 3) 관리자 - 웹사이트에 대한 통합적인 관리

[02] Form 전송 방식
1. HTML Form의 형태  :  - 데이터를 입력받을 목적으로 사용하는 태그
 <FORM name="frm" action="./sungjuk_proc.jsp" method = "GET/POST"> 
 1) name : 폼 이름, 폼의 요소 접근시 이용, 폼이 여러개인 경우 폼의 구분 
 2) action: 폼에서 입력받은 데이터를 보내 서버의 주소로써 웹은 주소상에 도메인 생략시 도메인을 자동으로 연결하여 전송
 예)  action="./sungjuk_proc.jsp"  
            ▶ 현재 브러우저로 로딩된 파일과 같은 폴더에있는 jsp로 전송 (*)
      action="../sungjuk_proc.jsp"  
            ▶ 현재 폴더의 상위 폴더에 있는 파일로 전송
      action="../news/sungjuk_proc.jsp" 
            ▶ 현재 폴더의 상위폴더로 나간 후 news 폴더안으로 이동하여 전송  
      action="http://172.16.7.100:9090/news/news_proc.jsp" 
            ▶ 전체 IP를 직접 기록한 경우 
      action="http://www.test.co.kr/news/news_proc.jsp"  
            ▶ 전체 도메인을 직접 기록한 경우
 
 3) method: 전송 방식 
   GET: 데이터 조회용(DBMS SQL: SELECT)   
   POST: 데이터 수정용(DBMS SQL: INSERT, UPDATE, DELETE) 
   * 특정 기업은 요청을 전부 POST로 요구하는 기업도 있음, POST만 써도 개발 가능
   
2. GET 전송 방식 
   - 서버의 데이터를 변경할 목적이 아닌 조회의 목적으로 사용(SQL: SELECT) 
   - 전송할 데이터를 문자열 형태로 URL의 뒤에 인수로 붙여서 전송
      따라서 보안성이 없어 누구나 전송 내용을 봄
     Form 태그에서의 'GET'방식은 서버로 전송시, 서버의 처리가 지연될 경우 중복해서 데이터 전송이 발생  
   - <A> 태그를 이용할 경우 일반적으로 GET방식 전송만 가능하나 Javascript를 이용하면 POST 방식으로 전송이 가능 
   - 4KB이상의 파라미터 문자열은 전송할 수 없음(대용량 전송이 어려움)
   - 주소를 공개(공유)할 목적으로 사용하는 경우, URL 문자 전송
   ex) 주소 복사해서 공유 -> 
    
 1) 주소와 데이터의 구분 :  ?: 전송되는 데이터(변수)의 시작  / &: 변수가 2개 이상일 경우 구분자로 사용됨. 
 2) 전송 예 
  - 한줄로 나타낸 경우 
   http://localhost:9090/jsp_test/request1.jsp?pay=1800000&su=200000

  - 여러줄로 나타낸 경우 
   http://localhost:9090/jsp_test/request1.jsp
   ?
   pay=1800000
   &
   su=200000

  - 요청 페이지가 브러우저의 접속 리스트에 노출됨으로,  처리페이지를 필요에따라 마음대로 호출가능하여 
    잘못된 데이터 주입으로 서버에러 발생 가능
   http://localhost:9090/jsp_test/request4.jsp?won=10000000&rest=15.0   
   
3. POST 전송 방식 
   - 서버의 데이터를 변경할 목적으로 가지고 있음(SQL: INSERT, UPDATE, DELETE) 
   - 파일의 형태로 전송됨으로 URL상에 나타나지않아 보안성
   - GET방식에 비해서 대용량의 데이터(파일)를 전송, 보안을 고려한다면 Form을 post 방식으로 전송

  ※ GET/POST 방식 사용시 HTTP의 사용은 보안성이 약함으로
     암호화(JAVA API) 전송이나 HTTPS(서버의 설정 필요, SSL)를 사용
  ※ GET방식은 특히 URL에 전송값이 노출되어 사용됨으로 보안이 필요 없는 전송에 이용함. 
  ※ 프로젝트 개발시 URL에 기록이 남는것을 방지하기위해 POST 방식만 사용할것을 요청하는 기업도  
  
  
4. Form에서 전송된 데이터 수신시 JSP 코드 첫라인에 한글 변환 선언문을 정의 
   - 한글등 전송시 브러우저 별 지정된 인코딩 타입에 따라 변환됨으로 한글이 깨짐. 
       브러우저는 URL 인코딩을 자신만의 형식으로 변환함으로 추가로 데이터 변환필요
   - GET 방식은 일부 브러우저는 정상 출력되나 'POST' 방식은 대부분 깨짐으로 필수적으로 선언
   
     UTF-8    -> 총 3곳의 한글변환 : contentType, UFT-8, request
    ---------
     Chrome -> 한글 -> Server -> <% request.setCharacterEncoding("utf-8"); %> 
     Safari                                      변환에 사용할 문자 코드 선언(각 브라우저 별 환경 통합)
     FireFox 
 
5. 뉴스 등록: TEXT, TEXTAREA, PASSWORD 
 
 1) TEXT :  한줄을 입력받을때 사용 / <input type='text' name='title' size='40'> 
 2) TEXTAREA : 
   - 여러라인을 입력받을 때
     <TEXTAREA name='content' rows='5' cols='40'>기본값</TEXTAREA>
   - rows: 행의 갯수, cols: 열, 컬럼, 문자의 갯수 
 3) PASSWORD
   - 패스워드 입력시 사용
     <input type='password' name='passwd' size='20'>
 
 4) CSS: 
    - *: 모든 태그
      <style type="text/css"> 
        *{ 
           font-family: 맑은 고딕; 
           font-size: 24px; 
        } 
      </style> 

 5) 형식 있는 날짜의 출력
   - yyyy-MM-dd hh:mm:ss.SSS: 년월일 시분초 밀리초, HH: 24시간 단위로 출력
   <%@ page import="java.util.Date" %>
   <%@ page import="java.text.SimpleDateFormat" %>
   <%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");
    String date = sdf.format(new Date());
    %> 
 
 6) 천단위 구분 기호 사용
   <%@ page import="java.text.DecimalFormat" %>
   DecimalFormat df = new DecimalFormat("￦ #,###,### 원"); // java.text.DecimalFormat
   
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
   <!-- action으로 동작할 form 전달 -->
  <form name ='frm' action='./t3_proc.jsp' method='GET'>  
  <H2>뉴스등록</H2>
 
   1. 제목<BR>
   <!-- <input type='문자' name='JAVA코드를 통해 입력받을 변수 이름'' size='40'><BR> 
            - size 지정 방식 보다는 style을 많이 사용
            - Mobile의 경우 width: 300px 식으로 지정시 잘릴 수 있음 -> %로 지정하는게 좋음-->
   <!-- autofocus="autofocus" : 새로고침시 커서 위치 -->
   <INPUT type='text' name='title' style='width: 50%' autofocus="autofocus"><BR> 
   
  2. 내용<BR>
   <TEXTAREA rows='5' name='content' style='width: 70%'></TEXTAREA><BR>
   <!-- 텍스트입력란 5행으로 생성, name =content -->
   
   3. 기부<BR>
   <INPUT type='number' name='donate' min='1000' max='1000000' step='500'
                value='0'>  <BR>
   <!-- 
   1) type='number'
     <input type='number' name='period' min='최소값' max='최대값' step='값의 간격' value='초기값'>
      step(위, 아래) 클릭시 500원씩 증가, 900입력 시 MIN(1000)원 입력하라 팝업
      type : 숫자인 경우 JSP로 받을 때 형변환 필수!!! Integer.parseInt
     -->
   
   4. 패스워드<BR>
   <INPUT type='number' name='password' style='width : 30%'>
   
   <BUTTON type="submit">등록</BUTTON>
   <!-- <input type='submit' value='등록'>  : HTML4.0방식 -->
   
  </form> <%-- form close --%>
 
</body>
</html>