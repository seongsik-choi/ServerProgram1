<%-- 
0315_과제 : 주제를 자유롭게 선정하여 HTML 페이지를 제작하여 등록할 것.
 1. HTML form 제작
   -> DIV, INPUT, TEXTAREA, SELECT, CHECKBOX, RADIO 
 
 2. 처리 페이지 제작
  -> 폼에서 입력받은 내용 출력
  
 3. 등록 시 성명은 실명으로 할 것.
--%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>음식 선택 Form</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>

<form name='frm' action='./proc.jsp' method='POST'>

<% // 선언부
String food = "치킨,피자,족발,햄버거";
String[] food_array = food.split(",");    

ArrayList<String> list = new ArrayList<String>();
list.add(0, "./images/food1.jpg");
list.add(1, "./images/food2.jpg");
list.add(2, "./images/food3.jpg");
list.add(3, "./images/food4.jpg");
%>
<H1>음식 선택 FORM</H1>
<DIV style='background-color: black; color: white;'>

&nbsp;1) 음식의 종류
 <% // JSP Code
  for(int i=0; i<list.size(); i++){
  if(i% 5 == 0 ){
%> <BR> 
<%
  }// if end
  String str = list.get(i);   // 데이터 추출
%> 
  <%-- ex. 이미지 호출 <IMG src ="경로" style="스타일 지정"> --%>
  <IMG src = "<%=str%>" style="wdith: 200px; height: 150px;">
<%
}// for end
%>

<UL style="list-style-type: decimal;">  <!-- 순서가없는 리스트지만 style 지정 : decimal  -->
  <% 
  for (int i=0; i< food_array.length; i++) { %>
    <LI><%=food_array[i] %></LI>
  <%
  }%>
</UL>
</DIV>  <!-- 1) 음식의 종류에 대한 DIV 태그 close -->

&nbsp; 2) 음식의 종류(INPUT을 이용한 직접 입력)
<input type='text' name='food2' 
           placeholder="ex)치킨, 피자, 족발, 햄버거 중 입력하시오." 
           autofocus="autofocus" style="width: 60%;">  <BR><BR>
           <%-- placeholder="도움말": 입력 도움말 출력 --%>

&nbsp; 3) 음식의 종류(SELECT, 단일선택, 피자가 기본 선택)
<SELECT name="food3" >
  <%
  for (int i=0; i< food_array.length; i++) {%>
    <OPTION value="<%=food_array[i] %>" 
      <%=(food_array[i].equals("피자"))?"selected='selected'":"" %>><%=food_array[i] %>
      </OPTION>
  <%
  }%>  
</SELECT><BR><BR>

&nbsp; 4) 음식의 종류(SELECT, 다중 선택)
<SELECT name="food4" multiple="multiple"> <!-- multiple 속성 적용 다중 선택 -->
  <%
  for (int i=0; i< food_array.length; i++) {
    if (food_array[i].equals("치킨")) { %>
      <OPTION value="<%=food_array[i] %>" selected="selected"><%=food_array[i] %></OPTION>
    <%  
    } else { %>
      <OPTION value="<%=food_array[i] %>"><%=food_array[i] %></OPTION>
    <%  
    } %>
  <%
  }%>  
</SELECT><BR><BR>

&nbsp; 5) 음식의 종류(radio box, 기본선택 되어있는 경우)<br>

  <label style="cursor: pointer;" >
    <input type="radio" name="food5"  value="치킨" checked="checked">치킨
  </label>
 <label style="cursor: pointer;" >
    <input type="radio" name="food5"  value="피자" >피자
  </label>
   <label style="cursor: pointer;" >
    <input type="radio" name="food5"  value="족발" >족발
  </label>
   <label style="cursor: pointer;" >
    <input type="radio" name="food5"  value="햄버거">햄버거
  </label>
<BR><BR> 

  <%-- radio 버튼이 선택이 되지않은 경우-> 메모리 참조 no(null)
           Q) 선택되지않는 경우, if~else문을 통해 메시지 출력--%>
&nbsp; 6) 음식의 종류(radio box, 기본선택no, 선택안할 시 _proc 쪽 처리문)<br>
<%
for (int i=0; i < food_array.length; i++) {
%>
  <label style="cursor: pointer;" >
    <input type="radio" name="food6"  value="<%=food_array[i]%>"
               ><%=food_array[i]%>
  </label>
<%  
}
%><BR><BR>

&nbsp; 7) 음식의 종류(CheckBox, 2가지 종류 기본 선택되어 있게)<br>
<%
for (int i=0; i < food_array.length; i++) {
%>
  <label style="cursor: pointer;">
    <input type="checkbox" name="food7" value="<%=food_array[i]%>"
               <%=("치킨, 햄버거".indexOf(food_array[i]) >= 0)?"checked='checked'":"" %>>
               <%=food_array[i]%>
  </label><br>
<%  
}//for end
%>
<br>

   <button type="submit">등록</button> 
   
 </form>
</body>
</html>