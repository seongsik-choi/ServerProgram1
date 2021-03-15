<%-- 
0315_
과제 : 주제를 자유롭게 선정하여 HTML 페이지를 제작하여 등록할 것.
 1. HTML form 제작
   -> INPUT, TEXTAREA, SELECT, CHECKBOX, RADIO 
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
 <% request.setCharacterEncoding("utf-8"); %>  <!--  한글 인코딩 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>음식 선택 proc</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>

<H1>음식 선택 PROC</H1>
 <%
  String food2 = request.getParameter("food2");
 String food5 = request.getParameter("food5");
  String[] food4 = request.getParameterValues("food4");  // 다중선택에 대한 반환
  %>
 <!-- SELECT를 이용한 Input 입력, 단일 선택, 다중선택, 기본선택 -->
 &nbsp; 2) 음식의 종류(INPUT을 이용한 직접 입력) : 
 <SPAN style="color:#FF0000;"><%=food2 %></SPAN><br><br>
 
 &nbsp; 3) 음식의 종류(SELECT, 단일선택, 피자가 기본 선택) : 
 <SPAN style="color:#FF0000;"><%=request.getParameter("food3") %></SPAN><br><br>

 &nbsp; 4) 음식의 종류(SELECT, 다중 선택) : 
 <SPAN style="color:#FF0000;"><%= food4.length %>개 선택</SPAN> <BR><BR>
  
  <DIV style='background-color: green; color: white;'>
    <SPAN> &nbsp;- Select로 선택한 음식의 종류</SPAN>
  <UL style="list-style-type: decimal" >    <!-- 앞에 표시가 1.= OL과 같은 -->
  <% for(int i =0; i<food4.length; i++  ){
  %>
    <li><%= food4[i] %> </li>
  <%
  }//for end
  %>  </UL>
  </DIV>

 &nbsp; 5) 음식의 종류(radio box, 기본선택 되어있는 경우) :
            <SPAN style="color:#FF0000;"> <%=food5 %></SPAN><br><br>
   
  &nbsp; 5.1) 음식의 가격 : 
  <%
     int price;
      if (request.getParameter("food5").equals("치킨")) {
          price = 20000;   
       }else if (request.getParameter("food5").equals("피자")) {
          price = 25000;
       }else if (request.getParameter("food5").equals("족발")) {
        price = 30000;
     } else {
          price = 7000;
      }
      out.print(price);
 %>원
 <BR> <BR>
   
 &nbsp; 6) 음식의 종류(radio box, 기본선택no, 선택안할 시 _proc 쪽 처리문) :
  <% 
  if(request.getParameter("food6")== null){
  %>
    <SPAN style="color:#00FF00;">음식를 선택하세요!</SPAN>
  <%
  }// end if
  else {
  %>
      <SPAN style="color:#FF0000;"><%=request.getParameter("food6") %>
      </SPAN>
  <%
  }// end else
  %> <br><br>
 
 <%
  String food7[] = request.getParameterValues("food7");  
  %>
 &nbsp; 7) 음식의 종류(CheckBox, 2가지 종류 기본 선택되어 있게) : 
 <SPAN style="color:#FF0000;"><%= food7.length %> 곳 선택</SPAN><br><br>
  <DIV style='background-color: green; color: white;'>
    <SPAN> &nbsp;- CheckBox로선택한 음식의 종류</SPAN>
  <UL style="list-style-type: decimal" >   <!-- UL Tag open -->
  <% 
        if(food7 != null){
          for(int i=0; i<food7.length; i++){  %>    
  <Li><%= food7[i] %> </Li>
 <%
      }// end for
    }// end if
 %>
 </UL>
 </DIV>
 
 <!-- Form으로 돌아가기 위한 반환문 -->
<A href="./form.jsp" >From으로 돌아가기</A>
 
</body>
</html>