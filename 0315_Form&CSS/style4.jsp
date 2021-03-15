<%-- 
0315_
4. CSS의 파일 분리
  - 1개 이상의 JSP 페이지에 CSS가 반복해서 사용될 경우
  A) Style.css파일 생성후 Style Tag와 내부 클래스들만 선언
  A) 사용하려는 .jsp 내에서: 
   css dic에 style0.css있는경우 : <link href="../css/style4.css" rel="Stylesheet" type="text/css"> 
   같은 dic에 style0.css있는경우 : <link href="./style4.css" rel="Stylesheet" type="text/css">    
    
  Q) style0.css의 파일을 이용
   -> BODY 태그 안 SPAN 적용 후
  A1) <SPAN id='id명'></SPAN>
  A2) <SPAN class='클래스명'></SPAN>
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>style4.jsp</title>
<link href="./style4.css" rel="Stylesheet" type="text/css"> 
</head>

<body>
 <SPAN class='focus1'>윈도우</SPAN> 
 10 출시 4개월만에 점유율 7.94% 기록
출시 두 달 째부터는 1%씩 상승…내년부터는 '권장 업데이트'로 바꿔
<SPAN class='focus2'>윈도우</SPAN> 
전체 점유율 90.42%…맥 OS 8.00%
<br><br>
[아시아경제 한진주 기자] <br>
<SPAN id='ms'>윈도우</SPAN> 
10이 출시 3개월만에 점유율 8%를 눈앞에 두고 있다. 
MS의 무료 업그레이드 정책이 조금씩 효과를 내고 있는 것으로 보인다.
2020년 1월부터 
<SPAN id='ms'>윈도우</SPAN> 
 10 의무 사용으로 변경  
 
</body>

</html>