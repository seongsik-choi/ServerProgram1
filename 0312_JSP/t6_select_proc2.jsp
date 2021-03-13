<%-- 
0312_ select_form2의 Action 부분
 multiple ="multilple" 옵션을 주어, OPTION 버튼을 여러개 선택 할 수있게 설정
 
 -> _proc에서는 다중 선택 된 코드(A01, A02 등을) 출력하게 설정
  A) request.getParameter : 하나의 문자열을 반환
  A1) String[] travel2 = request.getParameterValues("travel2"); // 배열 생성하여 getParameterValues
  
  Q) 3박4일 해외 여행 : <%= travel2.length %> 곳 선택<br> // length로 직으면 개수 출력확인
   A) 3박4일 해외 여행 : 3 곳 선택
   A2)  for(int i =0; i<travel2.length; i++  ){  
          <li> <%= travel2[i] %> </li>
          }
          
   Q) UL의 스타일링 = OL과 같에 할수도
 <!--  <UL style="list-style-type: " >                 Default -->
 <!--  <UL style="list-style-type: circle" >          앞에 표시가 O-->
 <!--  <UL style="list-style-type:  square" >       앞에 표시가 ㅁ-->
 <UL style="list-style-type: decimal" >    <!-- 앞에 표시가 1.= OL과 같은 -->      
 
  A) https://www.w3schools.com/       ->  Tag의 기능등을 볼수있는 사이트!! 중요!!
                                                     -> Try it Yourself
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<% request.setCharacterEncoding("utf-8"); %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>t6_select_proc2</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 28px;}
</style>
</head>
<body>
  <%
  String travel1 = request.getParameter("travel1");
  String[] travel2 = request.getParameterValues("travel2");
  %>
  
  1박2일 국내 여행: <%=travel1 %><br><br>
  3박4일 해외 여행 : <%= travel2.length %> 곳 선택<br>
  
 <!--  <UL style="list-style-type: " >           Default -->
 <!--  <UL style="list-style-type: circle" >    앞에 표시가 O-->
  <!--  <UL style="list-style-type:  square" >           Default -->
 <UL style="list-style-type: decimal" >    <!-- 앞에 표시가 1.= OL과 같은 -->
 
 <% for(int i =0; i<travel2.length; i++  ){
 %>
      <li> <%= travel2[i] %> </li>
 <%
 }
 %>
  </UL>
  
  <A href='./t6_select_form2.jsp'>다시 조회하기</A>
</body>
</html>
 