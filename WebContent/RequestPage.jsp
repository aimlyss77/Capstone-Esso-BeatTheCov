<%@page import="java.util.Map"%>
<%@page import="servlet.Database" %>
<%@page import="java.util.List"%>


<br></br>
<!-- NOTE: Form redirects to Java file servlets.ConfirmationPage.java (which is ConfirmationPageServlet, view this file to see it's @WebServlet annotation) -->
<html><body><form id="my_form" method="post" action="ConfirmationPageServlet"> <h2 align='center' style='color:darkred'>Request Page</h2>
<br>
<p><center>
	Hand Sanitizer: <input type='text' name ='1' id='1'><br>
	Face Masks: <input type='text' name ='2' id='2'> <br>
	Homemade surgical masks: <input type='text' name ='3' id='3'> <br>
	Cavi Wipes: " <input type='text' name ='4'  id='4'> <br>
	Disinfectant Wipes: "<input type='text' name ='5' id='5'> <br>
	Disinfectant Sprays: <input type='text' name ='6' id='6'> <br>
	Protective Suits: <input type='text' name ='7' id='7'> <br>
	Protective Goggles: <input type='text' name ='8'  id='8'> <br>
	Disposable Shoe Covers: <input type='text' name ='9' id='9'> <br>
</center></p>
<br><center> Who is the Request for </center></br> 
<center><input type='text' name='who' id='who'></center> <br>
<br><center><a href='http://localhost:8080/BeatTheCov/HomePage' align='center'>Home Page</a></center></br>
<br><center><a href="javascript:{}" onclick="document.getElementById('my_form').submit(); return false;" align='center'>Submit Request</a></center></br>
</form></body></html>