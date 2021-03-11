<%-- 0309_script6.jsp --%>
<%@ page contentType="text/html; charset=UTF-8" %>
 <%--
 1. <DL>, <DT>, <DD>
    - <DL>(Definition List): 데이터 목록을 나타내는 태그  예) 상품 목록등
    - <DT>(Definition Term): 데이터 항목                   예) 상품 제목
    - <DD>(Definition Description): 데이터에대한 설명  예) 상품 설명
    - <HR>: 수평선을 출력. 문단의 구분을 표시
    
    - 커피 이미지 저장은 '/jsp_test/WebContent/core/images' 폴더에 저장
    - 커피 이미지가 출력이 안될시 '/WebContent/core/images' 폴더를 선택하고 'F5'키 press
    - 이미지를 변경해도 새롭게 출력이 안되면 크롬의 브러우저 캐시를 삭제
       'Ctrl + Shift + Delete' 키를 동시에 눌러 '캐시된 이미지 또는 파일'을 삭제
  --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>jspscript6.jsp</title>
<style type="text/css">
  *{ font-family: 맑은 고딕; font-size: 26px;}
</style>
</head>

<body>
  <HR>                          <%-- 수평선을 출력. 문단의 구분을 표시 --%>
  <DL>                          <%-- 데이터 목록을 나타내는 태그 --%>
    <DT>커피</DT>         <%--  목록에 해당하는 데이터 항목--%>
    <DD>아메리카노</DD> <%-- 데이터에대한 설명 --%>
    <DD>카페라테</DD>
    <DD>에스프레소</DD>
  </DL>
  <HR>                           <%-- 수평선을 출력. 문단의 구분을 표시 --%>
  
  <DL>
    <DT>커피숍</DT>
    <DD>스타벅스</DD>
    <DD>이디야</DD>
    <DD>투썸플레이스</DD>
  </DL>
  <HR>                            <%-- 수평선을 출력. 문단의 구분을 표시 --%>
  
  <DL>
    <DT>방문후기</DT>
    <%-- 데이터에 대한 설명(DD)(IMG) --%>
    <DD><IMG src='../images/coffee01.jpg' style='width: 20%;'> 커피향이 너무 좋았어요~</DD>
    <DD><IMG src='../images/coffee02.jpg' style='width: 20%;'> 다음에 또오고 싶어요~</DD>
    <DD><IMG src='../images/coffee03.jpg' style='width: 20%;'> 언덕에 있어 바람이 잘 불어옵니다.</DD>  </DL> 
  <HR>  <%-- 수평선을 출력. 문단의 구분을 표시 --%>
  
</body>
</html>