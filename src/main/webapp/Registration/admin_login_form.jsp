<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>doctor login form</title>
<style>

@import url('https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

section {
  position: relative;
  min-height: 100vh;
  background-color: rgb(190, 226, 236);
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px;
}

section .container {
  position: relative;
  width: 800px;
  height: 500px;
  background: #fff;
  box-shadow: 0 15px 50px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  border: 3px solid rgb(219, 211, 211);
  border-radius: 10px;
}

section .container .user {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: flex;
  
}

section .container .user .imgBx {
  position: relative;
  width: 50%;
  height: 100%;
  background: white;
  transition: 0.5s;
}

section .container .user .imgBx img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

section .container .user .formBx {
  position: relative;
  width: 50%;
  height: 100%;
  background: #fff;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 40px;
  transition: 0.5s;
}

section .container .user .formBx form h2 {
  font-size: 18px;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 2px;
  text-align: center;
  width: 100%;
  margin-bottom: 10px;
  color: #555;
}

section .container .user .formBx form input {
  position: relative;
  width: 100%;
  padding: 10px;
  background: #f5f5f5;
  color: #333;
  border: none;
  outline: none;
  box-shadow: none;
  margin: 8px 0;
  font-size: 14px;
  letter-spacing: 1px;
  font-weight: 300;
}

section .container .user .formBx form input[type='submit'] {
  max-width: 100px;
  background: #677eff;
  color: #fff;
  cursor: pointer;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 1px;
  transition: 0.5s;
}

section .container .user .formBx form .signup {
  position: relative;
  margin-top: 20px;
  font-size: 12px;
  letter-spacing: 1px;
  color: #555;
  text-transform: uppercase;
  font-weight: 300;
}

section .container .user .formBx form .signup a {
  font-weight: 600;
  text-decoration: none;
  color: #677eff;
}

section .container .signupBx {
  pointer-events: none;
}

section .container.active .signupBx {
  pointer-events: initial;
}

section .container .signupBx .formBx {
  left: 100%;
}

section .container.active .signupBx .formBx {
  left: 0;
}

section .container .signupBx .imgBx {
  left: -100%;
}

section .container.active .signupBx .imgBx {
  left: 0%;
}

section .container .signinBx .formBx {
  left: 0%;
}

section .container.active .signinBx .formBx {
  left: 100%;
}

section .container .signinBx .imgBx {
  left: 0%;
}

section .container.active .signinBx .imgBx {
  left: -100%;
}

@media (max-width: 991px) {
  section .container {
    max-width: 400px;
  }

  section .container .imgBx {
    display: none;
  }

  section .container .user .formBx {
    width: 100%;
  }
}

	</style>
</head>

<body>

		<section>
		  <div class="container">
			<div class="user signinBx">
			  <div class="imgBx"><img src="https://img.freepik.com/free-photo/international-nurses-day-concept_23-2150204832.jpg" alt="" /></div>
			  <div class="formBx">
				<form action="admin_login-process.jsp" onsubmit="return validateform()" name="myform">
				  <h2>Sign In</h2>
				  <input type="text" name="admin_name" placeholder="Username" />
				  <input type="password" name="admin_pwd" placeholder="Password" />
				  <input type="submit" value="Login" />
				  <p class="signup">
					Don't have an account ?
					<a href="#" onclick="toggleForm();">Sign Up.</a>
				  </p>
				</form>
			  </div>
			</div>
			<div class="user signupBx">
			  <div class="formBx">
				<form action="add_admin.jsp" onsubmit="return true;">
				  <h2>Create an account</h2>
				  <input type="text" name="admin_name" placeholder="Username" />
				  <input type="text" name="admin_mblno" placeholder="Mobile Number" />
				  <input type="email" name="admin_email" placeholder="Email Address" />
				  <input type="password" name="admin_pwd" placeholder="Create Password" />
				  <input type="password" name="admin_confpwd" placeholder="Confirm Password" />
				  <input type="submit" value="Sign Up" />
				  <p class="signup">
					Already have an account ?
					<a href="#" onclick="toggleForm();">Sign in.</a>
				  </p>
				</form>
			  </div>
			  <div class="imgBx"><img src="https://www.emedstore.in/images/servicepage/patient-app-development.png?version=1.1" alt="" /></div>
			</div>
		  </div>
		</section>
	  


</body>
<script>
const toggleForm = () => {
  const container = document.querySelector('.container');
  container.classList.toggle('active');
};

//alert message for sign in
function validateform(){
                var name=document.forms["myform"]["admin_name"].value;
                var password=document.myform.admin_pwd.value;
                if(name==null || name==""){
                    alert("Name can't be blank");
                    return false;
                }
                else if(password.length<6){
                    alert("Password must be at least 6 characters long");
                    return false;
                }
                
            }
</script>
</html>

