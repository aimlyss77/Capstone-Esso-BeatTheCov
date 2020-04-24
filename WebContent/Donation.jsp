<%@page import="java.util.Map"%>
<%@page import="servlet.Database" %>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

 
<html><body><form id="donation_id" method="post" action="DonationServlet" ><h2 align='center' style='color:darkred'>Donation Page</h2>
<br>
<center>
Select ID: <select id="ID" name="ID">
<option value="1-HS">1-HS</option>
<option value="2-FM">2-FM</option>
<option value="3-HSM">3-HSM</option>
<option value="4-CW">4-CW</option>
<option value="5-DW">5-DW</option>
<option value="6-DS">6-DS</option>
<option value="7-PS">7-PS</option>
<option value="8-PG">8-PG</option>
<option value="9-DSC">9-DSC</option>
 </select>
 <br>
 <br>
Select Supply Name: <select name="SupplyName">
<option>Hand Sanitizer</option>
<option>Face Masks</option>
<option>Home Surgical Masks</option>
<option>Cavi Wipes</option>
<option>Disinfectant Wipes</option>
<option>Disinfectant Sprays</option>
<option>Protective Suits</option>
<option>Protective Goggles</option>
<option>Disposable Shoe Covers</option>
 </select>
 
 <br>
  <br>
 
 
Enter an Amount: <input type='text' name ='supplyAmt'>
<br>
<br>
Enter Date of Delivery: <input type='text' name ='date'>

</center>
<br>
<br><center><a href="javascript:{}" onclick="document.getElementById('donation_id').submit(); return false;" align='center'>Submit Donation</a></center></br>

<br><center><a href='http://localhost:8080/BeatTheCov/RequestPage.jsp' align='center'> Request Medical Supplies</a></center></br>
<br><center><a href='http://localhost:8080/BeatTheCov/InventoryPage.jsp' align='center'> Inventory </a></center></br>
<br><center><a href='http://localhost:8080/BeatTheCov/HomePage.jsp' align='center'> Home Page </a></center></br>
</form></body></html>