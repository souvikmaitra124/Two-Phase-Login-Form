<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.legend{
	 font-family: 'Helvetica';
	font-weight: 700;
	color: black;
	font-size: 26px;
	margin-bottom: 10px;
	
}
.customizedPrimaryBtn:hover{
	background: #003635;
	color: white;
	border: none;
}
.customizedPrimaryBtn{
	background: #530;
	color: white;
	border: none;
}
.customizedPrimaryBtn:VISITED{
	background: #066;
	color: white;
	border: none;
}
.customizedPrimaryBtn:ACTIVE{
	background: #003635;
	color: white;
	border: none;
}
</style>
<meta http-equiv="Content-Type" content="text/html">
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Two phase Login</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid" style="margin-top:30px;">
<div class="row">  
<div class="col-md-6 col-md-offset-3" style="padding-right: 0px!important;padding-left: 0px!important;">
    <div class="panel-body" style="padding-right: 4px!important;padding-left: 4px!important;">
<form class="form-horizontal" method="post" id="login" name="login" role="form" onSubmit='#' action="#" AUTOCOMPLETE="off">
	<fieldset  style="min-width: 0;padding:.35em .625em .75em!important;margin:0 2px;border: 2px solid silver!important;margin-bottom: 10em;box-shadow: -6px 15px 20px 0px;">
<legend id="first3" style="width: inherit;padding:inherit;border:2px solid silver;" class="legend">Username</legend>
				<legend id="myId8" class="hidden legend" style="width: inherit;padding:inherit;border:2px solid silver;">Password</legend>	
<div class="form-group" id="above" style="margin-bottom: 5px!important;">
									<div class="col-sm-1 col-md-2 col-lg-2 col-xs-1"></div>
									<output class="col-sm-10 col-md-8 col-lg-8 col-xs-10"
										id="responseFail" type="text"
										style="text-align: center; font-weight: bold; color: red;padding: 0px!important;" ></output>
									<div class="col-sm-1 col-md-2 col-lg-2 col-xs-1"></div>
								</div>	
 <div class="form-group" style="margin-bottom: 5px!important;">
                     <div class="col-sm-12 col-md-12 col-lg-12 col-xs-12" id="message" style="font-weight: bold; text-align: center;font-size: 10pt;">
						</div>
						 </div>
	<div class="form-group" id="first" style="margin-bottom: 0px!important;">
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
									<div
										class="col-sm-10 col-md-10 col-lg-10 col-xs-10 input-group">
										<span class="input-group-addon"><span class="glyphicon glyphicon-user" style="color: black;"></span></span> <input type="text"
											class="form-control" id="username" placeholder="Enter your Username">
									</div>
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
								</div>
<div class="form-group" id="first2">
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
									<div class="col-sm-10 col-md-10 col-lg-10 col-xs-10"
										style="text-align: right;padding-right: 0px;">
										<a
											href="#" style="color:teal">Forgot Username ?</a>
									</div>
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
								</div>	
<div class="form-group" id="first1">
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
									<div class="col-sm-11 col-md-11 col-lg-11 col-xs-10" style="text-align:center;">
										<button id="valuser" type="button" onclick="valUsername()"
											class="btn btn-primary customizedPrimaryBtn">
											Next</button>
									</div>

									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
								</div>	
<!--<div class="form-group hidden" id="myId" style="margin-bottom: 5px!important;">
									<div class="col-sm-1 col-md-2 col-lg-2 col-xs-1"></div>
									<div class="col-sm-10 col-md-8 col-lg-8 col-xs-10"
										id="Response"
										style="text-align: center; font-weight: bold;padding-top: 0px;" ></div>
									<div class="col-sm-1 col-md-2 col-lg-2 col-xs-1"></div>
								</div>	-->
<div class="form-group hidden" id="myId1" style="margin-bottom: 0px!important;">
									
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
									<div
										class="col-sm-10 col-md-10 col-lg-10 col-xs-10 input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-lock" style="color: black;"></span></span> <input
											type="password" class="form-control" id="password"
											style="width: 100%;" placeholder="Enter your Password"><span
											class="input-group-btn">
											<button class="btn btn-defaultCUST" id="view_button"
												style="height: 34px;border-color: #ccc;"
												type="button">
												<span class="glyphicon glyphicon-eye-open" ></span>
											</button>
										</span>
									</div>
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
								</div>	

<div class="form-group hidden" id="myId4">
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
									<div class="col-sm-10 col-md-10 col-lg-10 col-xs-10"
										style="text-align: right;padding-right: 0px;">
										<a
											href="#" style="color: teal;">Forgot password ?</a>
									</div>
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
								</div>	
<div class="form-group hidden" id="myId3">
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
									<div class="col-sm-11 col-md-11 col-lg-11 col-xs-10 button_Pad" style="text-align:center">
										<button type="button" onclick="prevPage()"
											class="btn btn-primary"
											style=" font-size: 13px;">
											Back</button>
					
									 
										<button id="submitbtn" type="submit"
											class="btn btn-success"
											onClick="javascript:return loginStatus();"
											style=" font-size: 13px;">
											Login</button>

									</div>
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
								</div>
			<div class="form-group" style="text-align:center;font-weight:bold">
			  Please pay a visit to <a target="_blank" href="https://www.formulaestack.com">Formulae Stack</a>
			   to explore more interesting snippets and articles </div>					
</fieldset>
</form>
</div>
</div>
</div>
<h2 style="text-align: center">Enter any username other than Admin else you would see invalid username message</h2>
</div>
</body>
<script type="text/javascript">
$(document).ready(function() { 
    document.getElementById("username").focus();
                
    $("#view_button").bind("mousedown touchstart", function() {
       $("#password").attr("type", "text");
   }), $("#view_button").bind("mouseup touchend", function() {
       $("#password").attr("type", "password");
   });             
                   	  });
function  valUsername(){
   if(document.getElementById("username").value.trim()==="" && document.getElementById("username").value!==null)
                           	  {
                           	 $('#responseFail').val('');
                           	 $('#username').val('');
                           	
                           	// $("#above").addClass('hidden');
                           	  $('#message').css('color','red');
								  $('#message').html('Please enter username');
								   
								  $('input:text').focus(
										    function(){
										        $(this).css({'border-color' : 'red'});
										        $(this).css({'box-shadow' : 'inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px #f15f5f'});
										    });
								
								  $('input:text').blur(
										    function(){
										    	 $(this).css({'border-color' : '#ccc'});
											        $(this).css({'box-shadow' : 'none'});
											        });
								
								   	$('#username').css({'border-color' : 'red'});
							 $('#username').css({'box-shadow' : 'inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px #f15f5f'});
								  document.getElementById("username").focus();
                           	  return false;
                           	  }
								  else{
								   var name = $('#username').val();
								   if(name=="admin" || name =="Admin" || name=="ADMIN"){
								  //$("#above").removeClass('hidden');
                                      		 $('#message').html('');
                                      		 $('input:text').focus(
        										    function(){
        										        $(this).css({'border-color' : 'red'});
        										        $(this).css({'box-shadow' : 'inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px #f15f5f'});
        										    });
                                      		 document.getElementById("username").focus();
                                      	$('#responseFail').css({'color' : 'red'});
                                      		$('#responseFail').text('You have entered invalid username');
								 
								   }
								   else{
								       $('#responseFail').css({'color' : '#555'});
								     $('#responseFail').text('Enter the password for '+name);
								 
								          $("#first").addClass('hidden');
                                 //  $("#above").addClass('hidden');
                                   $("#first1").addClass('hidden');
                                   $("#first2").addClass('hidden');
                                   $("#first3").addClass('hidden');//to hide
                                  
                                  // $("#myId").removeClass('hidden');	//to show
                                   $("#myId1").removeClass('hidden');
                                   $("#myId2").removeClass('hidden');
                                   $("#myId3").removeClass('hidden');
                                   $("#myId4").removeClass('hidden');
                                
                                   $("#myId8").removeClass('hidden');
                                   $('#message').html('');
                                  // $('#message1').html('');
                                  
                                  $('input:password').focus(
										    function(){
										        $(this).css({'border-color' : '#66afe9'});
										        $(this).css({'box-shadow' : 'inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102,175,233,.6)'});
										    });
                                  $('input:password').blur(
										    function(){
										    	 $(this).css({'border-color' : '#ccc'});
											        $(this).css({'box-shadow' : 'none'});
											        });
											         
                                  $('Response').html('Enter the password for');
                                   document.getElementById("password").focus();
								    }
								  }
        }   
function prevPage() {
                               	 $('#message').html('');
                               	// $('#message1').html('');
                               	 $('#password').val('');
                               	 $('#responseFail').val('');
                               	
                                $("#first").removeClass('hidden');
                                $("#first1").removeClass('hidden');
                                $("#first2").removeClass('hidden');
                                $("#first3").removeClass('hidden');//to hide
                               
                                //$("#myId").addClass('hidden');	//to show
                                $("#myId1").addClass('hidden');
                                $("#myId2").addClass('hidden');
                                $("#myId3").addClass('hidden');
                                $("#myId4").addClass('hidden');
                            
                                $("#myId8").addClass('hidden');
                                $('#ajaxResponse').css('color','#555');
                                $('input:text').focus(
										    function(){
										        $(this).css({'border-color' : '#66afe9'});
										        $(this).css({'box-shadow' : 'inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102,175,233,.6)'});
										    });
                                $('input:text').blur(
										    function(){
										    	 $(this).css({'border-color' : '#ccc'});
											        $(this).css({'box-shadow' : 'none'});
											        });
                               
                               // document.getElementById("username").blur();// to remove auto focus on usename after back is clicked
                                document.getElementById("username").focus();
}
function loginStatus(){
    alert("This is a demo login application");
    return false;
   
}
</script>
</html>