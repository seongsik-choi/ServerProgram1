<%-- 
0312_[02] <CHECKBOX>, <FIELDSET> 태그
   Q) 선택 항목 중 여러개를 선택 가능  예) 취미, 개발 가능 분야, 취득 자격증 종류등
   Q) 선택하지 않으면 null이 출력.  checked="checked": 기본 선택  
   Q) null 체크 방법
     <% if (license1 != null){ %>
           <LI><%=license1 %></LI>
     <% } %>
     
    Q) Checkbox가 다수일 경우의 처리 방법 : 문자열 배열로 값 처리
      String[] hobby = request.getParameterValues("hobby");
      for(int i=0; i<hobby.length; i++){
        out.println("<LI>" + hobby[i] + "</LI>");
        
     Q) CheckBox는 선택되지 않은 항목에 대해 null 값이 안나오게 처리해줘야
      String nation1 = request.getParameter("nation1");
      if(nation1 != null)
      out.println(nation1); 
      }
      
      Q) method ="POST" 방식을 사용한다면
         _proc(처리 쪽)에서  ->  request.setCharacterEncoding("utf-8");  인코딩 필수
         -> get방식은 가능하지만 -> 이왕이면 처리 쪽 문에   request 명시하고 POST방식 사용하는게 좋음
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>check_form</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>

<body>

  <form name='frm' action='./t8_check_proc.jsp' method='POST'>
    <fieldset>
    
      <legend>여행하고 싶은 국가는?</legend>
      <label style="cursor: pointer;">
       <!-- checkbox 특징 : type="checkbox", name="각각 다름(독립적)" -->
        <input type="checkbox" name='nation1' value='스위스' checked="checked"> 스위스
      </label>  <br>
     
      <label style="cursor: pointer;">
        <input type="checkbox" name='nation2' value='미국'> 미국
      </label> <br>      
      
      <label style="cursor: pointer;">
        <input type="checkbox" name='nation3' value='일본'> 일본
      </label>  <br>  
     
      <label style="cursor: pointer;">
        <input type="checkbox" name='nation4' value='캐나다'> 캐나다
      </label>    <br>
          
      <label style="cursor: pointer;">
      <!-- checkbox는 다중 선택이 가능하기에 checked="checked" 다중 선택 가능 -->
        <input type="checkbox" name='nation5' value='그리스' checked="checked"> 그리스
      </label>  <br>     
       
    </fieldset>
    
    <fieldset>
      <legend>좋아하는 메뉴는?</legend>
      <label style="cursor: pointer;">
      <!-- 같은 체크박스지만 name이 같은 경우  -->
        <input type="checkbox" name='food' value='김밥'> 김밥
      </label> <br>
     
      <label style="cursor: pointer;">
        <input type="checkbox" name='food' value='라면'> 라면 
      </label><br>
    
      <label style="cursor: pointer;">
        <input type="checkbox" name='food' value='만두'> 만두 
      </label><br>
      
      <label style="cursor: pointer;">
        <input type="checkbox" name='food' value='짜장면'> 짜장면 
      </label><br>
      
      <label style="cursor: pointer;">
        <input type="checkbox" name='food' value='부대찌게'> 부대찌게 
      </label><br>
     
    </fieldset>
    <br>
    <input type='submit' value='등록'>  
  </form>
</body>
</html>