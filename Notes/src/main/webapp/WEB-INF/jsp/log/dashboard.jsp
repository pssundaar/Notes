<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").remove();
    });
});
</script>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}

* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 3px 6px;
  margin-top: 8px;
  margin-right: 200px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>
</head>
<body>

<div class="container">


<form action="createNewNotes"  id="nameform">
<button type="submit" form="nameform" class="btn btn-danger" value="Submit">CREATE NEW NOTES</button>
</form>



</div>





<table>

  
  <tr>
    <td>Note Id</td>
    <td>Title</td>
    <td>Description</td>
    <td>Created Date</td>
    <td>Update Date</td>
    <td>Updatee</td>
  </tr>
  <c:set var="count" value="1" />
  <c:forEach items="${all}" var="notes">
  <form action="all" method="post">
  
  <tr>
    <td>${notes.noteid}</td>
    <td>${notes.title}</td>
    <td>${notes.description}</td>
     <td>${notes.created_date}</td>
      <td>${notes.updated_date}</td>
       <td><input type="submit"  name="click here" id="Submit" value="Update" class="btn btn-danger" ></td>
						
  </tr>
  
					<c:set var="notes" scope="session" value="${notes.noteid}" />
  						 <input type="hidden" name="sapAdmin${count}" value="${notes.noteid}">
	                <input type="hidden" value="${count}" name="sapHid">
	                
	               
    </form>
     <c:set var="count" value="${count+1}" />
    </c:forEach>
</table>











<div class="topnav">
  </br>
  <div class="search-container">
   <form action="dashboard" method="post" >
      <input type="text" placeholder="Search by Note title" name="title">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
<c:if test="${not empty job}">
<table>

  
  <tr>
    <td>Note Id</td>
    <td>Title</td>
    <td>Description</td>
    <td>Created Date</td>
    <td>Update Date</td>
  </tr>
  <c:forEach items="${job}" var="temp">
  <tr>
    <td>${temp.noteid}</td>
    <td>${temp.title}</td>
    <td>${temp.description}</td>
     <td>${temp.created_date}</td>
      <td>${temp.updated_date}</td>
  </tr>
  
    </c:forEach>
</table>
</c:if>
</body>
</html>
