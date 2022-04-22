<%@page import="moram.vo.PlaceVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.0.min.js"></script>
 <link rel="stylesheet" href="/Moram/css/main.css">

<style>
label{
  display : inline-block;
  width : 100px;
  height : 40px;
}
input {
 height : 30px;
 margin : 2px;
}
#list{
float: left;
display: inline-block;
}

#updateform{
float: right;
display: inline-block;

  position : fixed;
  top : 150px;
  right : 50px;
  margin-right: 5%;
}

</style>
<script>

function proc1(){
	
	ff=  document.myform;
	
	facilities_novalue = ff.facilities_no.value.trim();
 if(facilities_novalue.length < 1){
		alert("시설번호를 입력하세요");
		return false;
	}
 
 place_namevalue = ff.place_name.value.trim();
 if(place_namevalue.length < 1){
		alert("장소이름를 입력하세요");
		return false;
	}
 
 place_pricevalue = ff.place_price.value.trim();
 if(place_pricevalue.length < 1){
		alert("장소의 가격을 입력하세요");
		return false;
	}
 
	alert("절차 진행 완료");
	//서버로 보내기 
	ff.submit();
}
</script>

</head>
<body>
<%@ include file="../static/adminheader.jsp" %> 


<div id="insertform">

<div class="box">
   
<div class="container">
  <h2>시설의 장소 정보 입력</h2>

 <form name="myform" action="<%=request.getContextPath()%>/PlaceInsert.do" method="post">
       <label> 시설번호 </label>
      <input type="text" id="facilities_no" name="facilities_no"><br>
       
       <label> 장소이름 </label>
       <input type="text" id="place_name" name="place_name"><br>
       
       <label>장소소개 </label>
       <input type="text" id="place_info" name="place_info"><br>
       
       <label>장소가격(숫자입력) </label>
       <input type="text" id=place_price name="place_price"><br>

     <br>
     <button type="button"  onclick="proc1()" >장소정보 수정</button>
   </form>
   
   <div id="result1"></div>
   
</div>
</div>

</div>
<%@ include file="../static/footer.jsp" %> 
</body>
</html>