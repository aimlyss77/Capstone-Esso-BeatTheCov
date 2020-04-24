<%@page import="java.util.Map"%>
<%@page import="servlet.Database" %>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form><h2 align='center' style='color:darkred'>Thank you for your Donation</h2>
<p>


<%

//Getting Parameters from the drop downs in Donation.jsp Page
//and assigning them to String variables
String ID = request.getParameter("ID");
String supplyName = request.getParameter("SupplyName");
String supplyAmt = request.getParameter("supplyAmt");
String date = request.getParameter("date");

//Parsing the string variable for Supply Amount into an Integer variable
int intSupplyAmt = Integer.parseInt(supplyAmt); 

//Inserting a record for each donation made
Database.executeUpdate("INSERT INTO DonationTable(ID, SupplyName, SupplyAmt, DateOfDelivery) VALUES('"+ID+"','"+supplyName+"', '"+intSupplyAmt+"' , '"+date+"')");

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

//Updating the Inventory Table for supply amount each time a donation is made
//in respect with the ID selected.
//TO BE FIXED
System.out.println(ID);

if(ID.equals("1-HS"))
{
		int updateInv1 = id1AmtAvailable + intSupplyAmt;
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ updateInv1 +"' WHERE ID='1-HS'");
}else if(ID.equals("2-FM"))
{
	int updateInv2 = id2AmtAvailable + intSupplyAmt;
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ updateInv2+"' WHERE ID='2-FM'");
}else if(ID.equals("3-HSM"))
{
	int updateInv3 = id3AmtAvailable + intSupplyAmt;
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ updateInv3+"' WHERE ID='3-HSM'");
}else if(ID.equals("4-CW"))
{
	int updateInv4 = id4AmtAvailable + intSupplyAmt;
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ updateInv4+"' WHERE ID='4-CW'");	
}else if(ID.equals("5-DW"))
{
	int updateInv5 = id5AmtAvailable + intSupplyAmt;
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ updateInv5+"' WHERE ID='5-DW'");
}else if(ID.equals("6-DS"))
{
	int updateInv6 = id6AmtAvailable + intSupplyAmt;
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ updateInv6+"' WHERE ID='6-DS'");	
}else if(ID.equals("7-PS"))
{
	int updateInv7 = id7AmtAvailable + intSupplyAmt;
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ updateInv7+"' WHERE ID='7-PS'");	
}
else if(ID.equals("8-PG"))
{
	int updateInv8 = id8AmtAvailable + intSupplyAmt;
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ updateInv8+"' WHERE ID='8-PG'");
}else if(ID.equals("9-DSC"))
{
	int updateInv9 = id9AmtAvailable + intSupplyAmt;
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ updateInv9+"' WHERE ID='9-DSC'");	
}
%>

 
	

<br><center><a href='http://localhost:8080/BeatTheCov/RequestPage.jsp' align='center'> Request Medical Supplies</a></center></br>
<br><center><a href='http://localhost:8080/BeatTheCov/InventoryPage.jsp' align='center'> Inventory </a></center></br>
<br><center><a href='http://localhost:8080/BeatTheCov/HomePage.jsp' align='center'> Home Page </a></center></br>
</form></body></html>
</p>
</form>

</body>
</html>