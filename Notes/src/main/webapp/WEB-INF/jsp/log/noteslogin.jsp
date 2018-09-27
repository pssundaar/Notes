<!DOCTYPE html>
<html>
<head>
<style  >


html {
	font-family: verdana;
}
body{

    background-color: transparent;
}

img{
   align:center;
   display:block;
   margin:0 auto;
}
.tab{
	font-family:Amarante Verdana serif;
	color: #01233f;
}
.Title {
	color: #0066cc;
	margin-left: 80px;
	font-size: 130%;
	align: "right";
}
.Title1 {
	color: #0066cc;
	margin-left: 80px;
	font-size: 120%;
	align: "right";
}
.Title2 {
	color: #0066cc;
	margin-left: 50px;
	font-size: 120%;
	align: "center";
}
.Title3 {
	color: #0066cc;
	
	margin-left: 100px;
	font-size: 130%;
	align: "center";
}
.Title4 {
	color: #0066cc;
	font-family:verdana;
	margin-left: 130px;
	font-size: 130%;
	align: "center";
}
.input-disabled
{
background-color:#EBEBE4;
border:1px solid #ABADB3;
padding:2px 1px;
}

.container {<!--
	background-color: transparent #cccccc; -->
	background-color: solid grey;
	width: 400px;
	padding: 25px 25px;
	border: 1px white;
	border-radius: 10px;
	margin: auto;
	height: 350px;
	align: center;
	box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.2), 0 12px 40px 0
		rgba(0, 0, 0, 0.19); <!--
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19); --> <!--
	box-shadow: 0 4px 8px 0 #888888, 0 6px 20px 0 #888888;
	-->
}

.ScrollStyle
{
    max-height: 90px;
    overflow-y: auto;
}



.UNPW {
	width: 390px;
	border: 1px solid grey;
	border-radius: 4px;
	align: center;
	height: 40px;
	border: 3px solid #e6e6e6; <!--
	border-color: #ccccff;
	-->
}

.role {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.resetpwd {
	width: 100%;
	align: center;
	height: 30px;
	color: #0066cc;
	height: 20px;
}

.login {
	width: 100%;
	background-color: #0066cc;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 120%; <!--
	background-color: #008ae6-->
}
.login1 {
	width: 30%;
	background-color: #0066cc;
	color: white;
	padding: 3px 10px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 120%; <!--
	background-color: #008ae6-->
}
.login2 {
	width: 70%;
	background-color: #0066cc;
	color: white;
	padding: 3px 10px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 120%; <!--
	background-color: #008ae6-->
}
.login3 {
	width: 100%;
	background-color: #0066cc;
	color: white;
	padding: 3px 10px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 120%; <!--
	background-color: #008ae6-->
}
.login:hover {
	background-color: #0080ff;
}

.footer {
	width: 390px;
	align: center;
	height: 30px;
	height: 10px;
	padding: 10px 50px;
	color: black;
}

p {
	font-family: verdana;
}


.confirmMessage { 
	margin: 0; 
	padding: 0; 
	font-size: .8em;
	
}
textarea1 {
   font-size: 13pt;
   font-family: Arial;
} 


</style>
<script type="text/javascript">
if(self===top){
	var antiClickJack=document.getElementById("antiClickJack1");
	    antiClickJack.parentNode.removeChild(antiClickJack);
}else{
	top.location=self.location;
}

</script> 

<script type="text/javascript">
	function disableBackButton() {
		window.history.forward();
	}
	setTimeout("disableBackButton()", 0);
</script>
<script type="text/javascript">

function validatePassword() {
    var p = document.getElementById('loginpaasw').value,
        errors = [];
    if (p.length < 8) {
        errors.push("Your password must be at least 8 characters"); 
    }
    if (p.search(/[a-z]/i) < 0) {
        errors.push("Your password must contain at least one letter.");
    }
    if (p.search(/[0-9]/) < 0) {
        errors.push("Your password must contain at least one digit."); 
    }
    if (errors.length > 0) {
        alert(errors.join("\n"));
        return false;
    }
    return true;
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title class="tab">Notes Login</title>
	<!--<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/OpportunityTrcakerCSS/otstyle.css" />-->

</head>

<body onload="disableBackButton()">
	
	
	
	
	<div align="center ">
		<br></br>

	</div>
	<!--<center><h3><font color='red'>${ERRORADMIN}</font></h3></a></center>
	<center><h3><font color='red'>${ERRORADMIN_1}</font></h3></a></center>
	<center><h3><font color='red'>${ERRORADMIN_2}</font></h3></a></center>-->
	<div class="container html">
	
		<p class="Title4 html">
			&nbsp;&nbsp;&nbsp;NOTES</p>
		
		<!--<img  class="img" src="${pageContext.request.contextPath}/IMAGES/celico.png" alt="Notes" >-->
		
		<form action="check" method="post" >
			<p>
				<label class="resetpwd html">USER ID:</label> <input type="text"
					name="email" id="email" autocomplete="off" placeholder="Enter your email ID "    class="UNPW html" required>
			</p>
			<p>
				<label class="resetpwd html"> PASSWORD: </label><input
					type="password" name="password"  id="loginpaasw" autocomplete="off"  placeholder="Password"
					class="UNPW html" required>
			</p>

			

			<p>
				<input type="submit" name="commit" value="Login" class="login html">
			</p>


		</form>
	
		<div class="login-help" align="center">
			<p class="resetpwd html">
				<a href="../../pmoAutomation/Login/registerUser.php" class="resetpwd html">Sign Up</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>

			<footer>&copy;2018  </footer>
		</div>


	</div>
</body>
</html>