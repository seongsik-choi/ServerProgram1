<%-- 
0315_
3. SPAN 태그에 CSS 주기, class 속성을 이용한 CSS 선언, 재사용성 향상
   - CSS 속성을 class로 선언하면 재사용하기 쉬운 구조를 가지고있어 개발이 편리
   - 같은 태그에 대해서도 상황에따라 다양한 효과 적용 가능, 많이 사용
   - CSS 속성을 #을 이용한 id로 선언 : 페이지 전체에서 id는 중복선언을 할 수 없음으로 1번만 적용가능
   - JAVA Class와 관련 No
   
   1) CSS 속성을 Class로 선언 : 재사용 가능
   2) CSS 속성을 Id로 선언 : 재사용 불가
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>

<style type="text/css">
 /* 해당 라인은 모든 라인에 스타일 적용, 클래스 적용시 우선순위는 밀림*/
  *{ font-family: Malgun Gothic; font-size: 26px;}
  
  /* 
  1) CSS 속성을 Class로 선언 : 재사용 가능
  Q) Style Tag안에서
    .클래스명{
        속성1 : 값;
    }
   A) <SPAN class='클래스명'></SPAN>
    
   2) CSS 속성을 Id로 선언 : 재사용 불가
   Q) Style Tag안에서
    #id명{
        속성1 : 값;
    }
  A) <SPAN id='id명'></SPAN>

*/
 /* class='focus1'에 적용 */
  .focus1 { 
      font-weight: bold; 
      font-size: 32px; 
      color: #FF0000; 
      background-color: #FFFF00;
  }
  
  /* class='focus2'에 적용 */
  .focus2 { 
      font-weight: bold; 
      font-size: 16px; 
      color: #FFFFFF; 
      background-color: #FF0000;
  }
  
  /* id='ms'에 적용 */
  #ms { 
      font-weight: bold; 
      font-size: 50px; 
      color: #FFFFFF; 
      background-color: #0000FF;
  }
  
</style>
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