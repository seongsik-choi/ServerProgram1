<%-- 
0315_
2. <Style> 태그를 이용하여 모든 SPAN 태그에 CSS 주기
 - Style을 같은 태그에 반복해서 적용하는 경우
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>

<style type="text/css">
 /* 해당 라인은 모든 라인에 스타일 적용 */
  *{ font-family: Malgun Gothic; font-size: 26px;}
  
 /*style1.jsp에 줬던 SPAN을 해당 영역에 선언 -> 모든 SPAN에 적용
    속성 값들은 들여쓰기 두번(tab 2번 적용)
   1) Style Tag안에서
     SPAN{
        속성1 : 값;
     }
     
   2) body 쪽 Tag : <SPAN>Tag 값</SPAN> 
 */ 
  SPAN{
      font-weight: bold; 
      font-size: 32px; 
      color: #FF0000; 
      background-color: #FFFF00;
  }
</style>
</head>

<body>
 <SPAN>윈도우</SPAN> 
 10 출시 4개월만에 점유율 7.94% 기록
출시 두 달 째부터는 1%씩 상승…내년부터는 '권장 업데이트'로 바꿔
<SPAN>윈도우</SPAN> 
전체 점유율 90.42%…맥 OS 8.00%
<br><br>
[아시아경제 한진주 기자] <br>
<SPAN>윈도우</SPAN> 
10이 출시 3개월만에 점유율 8%를 눈앞에 두고 있다. 
MS의 무료 업그레이드 정책이 조금씩 효과를 내고 있는 것으로 보인다.
2020년 1월부터 
<SPAN>윈도우</SPAN> 
 10 의무 사용으로 변경  
 
</body>

</html>