<%--
0315_
[13] CSS(Cascading Style Sheet)의 사용, SPAN, DIV 기본 사용법, A 태그
[01] CSS(Cascading Style Sheet)의 사용 
    - HTML:  Layout 구성 및 데이터 출력의 목적
    - CSS는 출력되는 HTML에 시각적인 효과를 적용하는 기능
 A) HTML + CSS  + JAVAScript = Modern Web Sites & Applications

 A) HTML에서 시각적인 부분을 CSS로 분리해 유지보수성이 향상된 웹사이트 개발이 가능(HTML이 간결)
    - 주석: /* */
 Q) SELECTOR{속성:값}의 형태, SELECTOR(HTML 태그 선택자)는 어느 태그에 CSS를 적용할지를 지정
       예)
          * {          <-- 모든 태그
            font-size: 20px;
          }

          BODY {    <-- BODY 태그에 적용
            font-size: 20px;
          }
 
          OL LI {     <-- OL 태그안의 LI 태그에 적용, 공백으로 태그의 계층(자식) 구현
            font-size: 20px;
          }
 
          P, DIV {    <-- P, DIV 태그 2개를 나타냄, 각각의 태그는 ','로 구분
            font-size: 20px;
          }
 
          .table {     <-- 태그의 class 속성으로 여러 곳에서 사용 가능 
            border: solid 0px #FF0000;
          }   
 
          #java {  <-- id가 java인 태그, 하나의 페이지에서 한번만 선언 가능
            font-size: 20px;
          }
 
          #menu LI {  <-- id가 menu인 태그안의 LI 태그
            font-size: 20px;
          }
 
 
     - CSS 적용 우선순위: 태그에 기본적으로 class가 적용되며 속성을 style에서 재정의하여 일부만 효과를 새로 줄수있음
       순서: CSS 파일(가장 낮음) --> class --> style(적용되는 우선 순위가 가장 높음)
       <td width="500" class="td_left" style="height:250px" >
         <%=content%>
       </td>

       * CSS의 class는 JAVA의 class와 다름.

     - 색상: #RRGGBB: R: Red, G: Green, B: Blue
              #000000: 검은색, #FFFFFF: 흰색, #FF0000: RED,
              #00FF00: Green, #0000FF: Blue
       * 10 진수: 0 ~ 9, 10에서 자리올림 발생 /  * 16 진수: 0 ~ 10(A) 11(B) 12(C) 13(D) 14(E) 15(F), 16에서 자리올림 발생

     - 속성값의 단위(px, %...)는 생략하지 말것, 공백 제거: margin: 30px auto;
     - 투명도 설정: #RRGGBBOO: OO는 투명도를 나타냅니다. 
     - CSS 관련 명령어 및 색상표 지원: http://www.w3schools.com

   * Chrome에서 CSS file이 적용이 안되면 [설정 -> 인터넷 사용 기록을 삭제]하고 '새로고침'
     - Ctrl + Shift + Del 키를 동시에 누릅니다(주로 CSS 파일에서 문제 발생).
     - 1시간전 기록만 삭제 권장
 
1. 특정 태그에 직접 스타일을 선언하는 경우, 태그마다 값이 다른 경우 주로 사용
   <DIV style='font-size: 24px;'></DIV>
 
2. <HEAD>태그안에 스타일을 주는 경우, 태그들이 공통적인 CSS를 사용하는 경우
   <HEAD> 
     <style type="text/css"> 
       DIV{ 
         font-family: gulim; 
         font-size: 24px; 
       } 
 
       .div{ 
         font-family: gulim; 
         font-size: 24px; 
       } 

       #div{ 
         font-family: gulim; 
         font-size: 24px; 
       } 
     </style> 
   </HEAD>
 
3. 특정 파일에 기록
- 저장: /WebContent/css/style.css 

[02] CSS 실습
 
1. SPAN 태그에 직접 CSS를 명시하기, style 속성 사용하기 
   - 특정 단어에 효과를 주는 경우 사용, Style을 반복해서 적용하지 않는 경우
 Q) 윈도우라는 글자에 전부 스타일 적용
  <SPAN style='font-weight: bold; font-size: 32px; color: #FF0000; 
                      background-color: #FFFF00;'>윈도우</SPAN>\
 A) 개별 스타일 적용 but 너무 많은 스타일 Form
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
 <SPAN style='font-weight: bold; font-size: 32px; color: #FF0000; background-color: #FFFF00;'>윈도우</SPAN> 
 10 출시 4개월만에 점유율 7.94% 기록
출시 두 달 째부터는 1%씩 상승…내년부터는 '권장 업데이트'로 바꿔
<SPAN style='font-weight: bold; font-size: 32px; color: #00FF00; background-color: #FFFF00;'>윈도우</SPAN>
전체 점유율 90.42%…맥 OS 8.00%
<br><br>
[아시아경제 한진주 기자] <br>
<SPAN style='font-weight: bold; font-size: 32px; color: #0000FF; background-color: #FFFF00;'>윈도우</SPAN>
10이 출시 3개월만에 점유율 8%를 눈앞에 두고 있다. 
MS의 무료 업그레이드 정책이 조금씩 효과를 내고 있는 것으로 보인다.
2020년 1월부터 
<SPAN style='font-weight: bold; font-size: 32px; color: #FF0000; background-color: #FFFF00;'>윈도우</SPAN>
 10 의무 사용으로 변경  
 
</body>
</html>