<%--
0312_[12] 각종 태그의 초기값 설정, HTML 특수 문자 Entity, HTTP 상태 코드 

1. <INPUT><TEXTAREA><BUTTON> 태그의 초기값 설정, 천단위 구분자 사용
 [실행 화면]

price1: 1500000
price2: 1,500,000
price3: 1,500,000
comma 제거 price3: 1500000
수당 추가 price4: 1600000
gdp: 35000 ＄
 --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>폼 데이터의 출력</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
 
 <!-- Get방식의 Mthod -->
<form name='frm' action='./t9_output_proc.jsp' method='GET'>
<%
  String msg = "가을";
  String content = "신청 날짜:\n신청 인원:\n결재 금액:\n";
  int price = 1500000;
  String passwd = "1234";
  String btn = "업로드";
  int gdp = 32000;
%>
  <!-- 1) intput 상자 생성, 스크립틀릿으로 msg변수 입력 -->
  <input type="text" name="title" value="<%=msg %>"   
            style="width: 60%;">   <br><br> 
    
    <!-- 2) textArea 생성(여러 택스트 상자), 스크립틀릿으로 content 변수 대입 -->
   <textarea rows="3" name="content" style="width: 60%;"><%=content %></textarea>      
  <br><br>
  
   price1 : <input type="number" name="price1" value="<%=price %>"
                        style="width: 40%;"> 원
            
   <!-- 3) 버튼 생성. onclick 이벤트로 표시할 메시지박스 출력 알람(HTML 실습중), 스크립틀릿으로 btn 변수 대입 -->
    <!--  업로드를 눌러야 가격 적용 후 하단 실행 -->
  <button type="button" onclick="alert('HTML 실습중');"><%=btn %></button>          
  
  <br><br>
  
  <%
  DecimalFormat df = new DecimalFormat("#,###,###");
  %>
  
  <!-- ERROR, comma 출력 에러 -->
  price2 : <input type="number" name="price2" 
                       value="<%=df.format(price) %>"
                      style="width: 40%;"> 원 ERROR
  <br>             
  <!-- SUCCESS -->           
  price3 :  <input type="text" name="price3" 
                         value="<%=df.format(price) %>"
                         style="width: 40%;"> 원
  <br>      
       
  <input type="text" name="gdp" 
             value="<%=df.format(gdp) %>"
             style="width: 40%;"> ＄
  <br>     
  <button type="submit">등록</button> 
 
</form>

</body>
</html>

