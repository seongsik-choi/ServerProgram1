<%-- 
0312_check_proc : check_form의 Action 부분
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<% 
request.setCharacterEncoding("utf-8"); 
DecimalFormat df = new DecimalFormat("￦ #,###,### 원");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
String date = sdf.format(new Date());
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>check_proc</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
  여행하고 싶은 국가는?<br>
  <%
    String nation1 = request.getParameter("nation1");
    if(nation1 != null) // CheckBox는 선택되지 않은 항목에 대해 null 값이 안나오게 처리해줘야
    out.println(nation1); 
    
    String nation2 = request.getParameter("nation2");
    if(nation2 != null)
    out.println(nation2); 
    
    String nation3 = request.getParameter("nation3");
    if(nation3 != null)
    out.println(nation3); 
    
    String nation4 = request.getParameter("nation4");
    if(nation4 != null)
    out.println(nation4); 
    
    String nation5 = request.getParameter("nation5");
    if(nation5 != null)
    out.println(nation5); 
  %>
  
  <br><br>
  좋아하는 메뉴는?
  <UL style="list-style-type: decimal" >   <!-- UL Tag open -->
  <% String food[] = request.getParameterValues("food");  
        //System.out.println("food : " +food); // Console
        if(food != null){
          for(int i=0; i<food.length; i++){  %>    
  <Li><%= food[i] %> </Li>
 <%
      }// end for
    }// end if
 %>
 </UL> 
   
   <A href="./t8_check_form.jsp">다시 시도</A>
</body>
</html>