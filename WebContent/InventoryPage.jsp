<%@page import="java.util.Map"%>
<%@page import="servlet.Database" %>
<%@page import="java.util.List"%>

<br></br>
<html><body><form></form><h2 align='center' style='color:darkred'>Inventory Page</h2></body>  </html>
<br>
<p><center>

<%
//Database.executeUpdate("UPDATE Table SET Value='Value'");

//Getting the supply amounts for each Medical Supply
List<Map<String, Object>> id1 = Database.executeQuery("SELECT SupplyAmt FROM MedicalSupplies WHERE ID ='1-HS'");
String id1stringamt = String.format("%s", id1);
id1stringamt = id1stringamt.substring(12, id1stringamt.length() - 2);


List<Map<String, Object>> id2 = Database.executeQuery("SELECT SupplyAmt FROM MedicalSupplies WHERE ID ='2-FM'");
String id2stringamt = String.format("%s", id2);
id2stringamt = id2stringamt.substring(12, id2stringamt.length() - 2);

List<Map<String, Object>> id3 = Database.executeQuery("SELECT SupplyAmt FROM MedicalSupplies WHERE ID ='3-HSM'");
String id3stringamt = String.format("%s", id3);
id3stringamt = id3stringamt.substring(12, id3stringamt.length() - 2);

List<Map<String, Object>> id4 = Database.executeQuery("SELECT SupplyAmt FROM MedicalSupplies WHERE ID ='4-CW'");
String id4stringamt = String.format("%s", id4);
id4stringamt = id4stringamt.substring(12, id4stringamt.length() - 2);

List<Map<String, Object>> id5 = Database.executeQuery("SELECT SupplyAmt FROM MedicalSupplies WHERE ID ='5-DW'");
String id5stringamt = String.format("%s", id5);
id5stringamt = id5stringamt.substring(12, id5stringamt.length() - 2);

List<Map<String, Object>> id6 = Database.executeQuery("SELECT SupplyAmt FROM MedicalSupplies WHERE ID ='6-DS'");
String id6stringamt = String.format("%s", id6);
id6stringamt = id6stringamt.substring(12, id6stringamt.length() - 2);

List<Map<String, Object>> id7 = Database.executeQuery("SELECT SupplyAmt FROM MedicalSupplies WHERE ID ='7-PS'");
String id7stringamt = String.format("%s", id7);
id7stringamt = id7stringamt.substring(12, id7stringamt.length() - 2);

List<Map<String, Object>> id8 = Database.executeQuery("SELECT SupplyAmt FROM MedicalSupplies WHERE ID ='8-PG'");
String id8stringamt = String.format("%s", id8);
id8stringamt = id8stringamt.substring(12, id8stringamt.length() - 2);

List<Map<String, Object>> id9 = Database.executeQuery("SELECT SupplyAmt FROM MedicalSupplies WHERE ID ='9-DSC'");
String id9stringamt = String.format("%s", id9);
id9stringamt = id9stringamt.substring(12, id9stringamt.length() - 2);

//Parsing the string Supply amounts to int for operations.
int id1AmtAvailable = Integer.parseInt(id1stringamt);
int id2AmtAvailable = Integer.parseInt(id2stringamt);
int id3AmtAvailable = Integer.parseInt(id3stringamt);
int id4AmtAvailable = Integer.parseInt(id4stringamt);
int id5AmtAvailable = Integer.parseInt(id5stringamt);
int id6AmtAvailable = Integer.parseInt(id6stringamt);
int id7AmtAvailable = Integer.parseInt(id7stringamt);
int id8AmtAvailable = Integer.parseInt(id8stringamt);
int id9AmtAvailable = Integer.parseInt(id9stringamt);

%>
Hand Sanitizer: <%= id1stringamt %><br>
Face Masks: <%= id2stringamt %><br>
Homemade surgical masks: <%= id3stringamt %><br>
Cavi Wipes: <%= id4stringamt %> <br>
Disinfectant Wipes: <%= id5stringamt %><br>
Disinfectant Sprays: <%= id6stringamt %><br>
Protective Suits: <%= id7stringamt %><br>
Protective Goggles: <%= id8stringamt %><br>
Disposable Shoe Covers: <%= id9stringamt %> 	

</center></p>

<br><center><a href='http://localhost:8080/BeatTheCov/RequestPage' align='center'> Request Medical Supplies</a></center></br>

<br><center><a href='http://localhost:8080/BeatTheCov/HomePage' align='center'>Home Page</a></center></br>
</form></body></html>