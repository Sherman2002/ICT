<html>
<style type="text/css">
	h1{
		color:red;
		margin-left: 10%;
	}


</style>

<h1> Registration Form </h1>
<body>

<div>


<form action="handler.php" method="post" onsubmit="return check();">

Name:<input type="text" name="name"> <br>

Gender: <input type="radio" name="sex" value="male"> Male <input type="radio" name="sex" value="female"> Female <br>

Password: <input type="password" name="pwds" id="password"> <br>

Re-type Password: <input type="password" name="pwds" id="confirm"> <br>

HKID number: <input type="text" name="HKID" maxlength="8"> <br>

Type of membership: <input type="radio" name="membership" value="Corporate"> Corporate <input type="radio" name="membership" value="Ordinary"> Ordinary <br>
<input type="submit" value="Submit" name="btn_submit" >

</form>

</div>

</body>
<script type="text/javascript">
	function check(){
		if(document.getElementById('password').value == document.getElementById('confirm').value){
			return true;
		}else{
			alert('Invalid Password');
			return false;
		}
	}
</script>
</html>