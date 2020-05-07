<%@page import="java.util.Map"%>
<%@page import="servlet.Database" %>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintStream" %>

<br>
<html><body><form><h2 align='center' style='color:darkred'>Confirmation Page</h2>
<br>
<p><center>
<% 

//Getting user input from textboxes on RequestPage.jsp
String requestBy = request.getParameter("who");


	String reqID1 = request.getParameter("1"); 
	String reqID2 = request.getParameter("2");
	String reqID3 = request.getParameter("3");
	String reqID4 = request.getParameter("4");
	String reqID5 = request.getParameter("5");
	String reqID6 = request.getParameter("6");
	String reqID7 = request.getParameter("7");
	String reqID8 = request.getParameter("8");
	String reqID9 = request.getParameter("9");
	
	//Parsing  every input as Integer for operations
	int intreqID1 = Integer.parseInt(reqID1); 
	int intreqID2 = Integer.parseInt(reqID2);
	int intreqID3 = Integer.parseInt(reqID3);
	int intreqID4 = Integer.parseInt(reqID4);
	int intreqID5 = Integer.parseInt(reqID5);
	int intreqID6 = Integer.parseInt(reqID6);
	int intreqID7 = Integer.parseInt(reqID7);
	int intreqID8 = Integer.parseInt(reqID8);
	int intreqID9 = Integer.parseInt(reqID9);
	
	
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
	
	int invUpdate1 = id1AmtAvailable - intreqID1;
	int invUpdate2 = id2AmtAvailable - intreqID2;
	int invUpdate3 = id3AmtAvailable - intreqID3;
	int invUpdate4 = id4AmtAvailable - intreqID4;
	int invUpdate5 = id5AmtAvailable - intreqID5;
	int invUpdate6 = id6AmtAvailable - intreqID6;
	int invUpdate7 = id7AmtAvailable - intreqID7;
	int invUpdate8 = id8AmtAvailable - intreqID8;
	int invUpdate9 = id9AmtAvailable - intreqID9;
	
	//creating variables for calculations
	int updateCalc1ID1;
	int updateCalc2ID1;
	
	int updateCalc1ID2;
	int updateCalc2ID2;
	
	int updateCalc1ID3;
	int updateCalc2ID3;
	
	int updateCalc1ID4;
	int updateCalc2ID4;
	
	int updateCalc1ID5;
	int updateCalc2ID5;
	
	int updateCalc1ID6;
	int updateCalc2ID6;
	
	int updateCalc1ID7;
	int updateCalc2ID7;
	
	int updateCalc1ID8;
	int updateCalc2ID8;
	
	int updateCalc1ID9;
	int updateCalc2ID9;
	
	//Updating the Medical Supplies Inventory
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ invUpdate1+"' WHERE ID='1-HS'");
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ invUpdate2+"' WHERE ID='2-FM'");
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ invUpdate3+"' WHERE ID='3-HSM'");
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ invUpdate4+"' WHERE ID='4-CW'");
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ invUpdate5+"' WHERE ID='5-DW'");
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ invUpdate6+"' WHERE ID='6-DS'");
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ invUpdate7+"' WHERE ID='7-PS'");
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ invUpdate8+"' WHERE ID='8-PG'");
	Database.executeUpdate("UPDATE MedicalSupplies SET SupplyAmt = '"+ invUpdate9+"' WHERE ID='9-DSC'");


	//Calculations depending on whether the amount of medical supply requested is smaller or larger than the inventory available
	if(id1AmtAvailable < intreqID1)
	{
		updateCalc2ID1 = id1AmtAvailable;
	}else
	{
		updateCalc1ID1 = id1AmtAvailable - intreqID1;
	}
	
	if(id2AmtAvailable < intreqID2)
	{
		updateCalc2ID2 = id2AmtAvailable;
	}else
	{
		updateCalc1ID2 = id2AmtAvailable - intreqID2;
	}
	
	if(id3AmtAvailable < intreqID3)
	{
		updateCalc2ID3 = id3AmtAvailable;
	}else
	{
		updateCalc1ID3 = id3AmtAvailable - intreqID3;
	}
	
	if(id4AmtAvailable < intreqID4)
	{
		updateCalc2ID4 = id4AmtAvailable;
	}else
	{
		updateCalc1ID4 = id4AmtAvailable - intreqID4;
	}
	
	if(id5AmtAvailable < intreqID5)
	{
		updateCalc2ID5 = id5AmtAvailable;
	}else
	{
		updateCalc1ID5 = id5AmtAvailable - intreqID5;
	}
	
	if(id5AmtAvailable < intreqID5)
	{
		updateCalc2ID5 = id5AmtAvailable;
	}else
	{
		updateCalc1ID5 = id5AmtAvailable - intreqID5;
	}
	
	if(id6AmtAvailable < intreqID6)
	{
		updateCalc2ID6 = id6AmtAvailable;
	}else
	{
		updateCalc1ID6 = id6AmtAvailable - intreqID6;
	}
	
	if(id7AmtAvailable < intreqID7)
	{
		updateCalc2ID7 = id7AmtAvailable;
	}else
	{
		updateCalc1ID7 = id7AmtAvailable - intreqID7;
	}
	
	if(id8AmtAvailable < intreqID8)
	{
		updateCalc2ID8 = id8AmtAvailable;
	}else
	{
		updateCalc1ID8 = id8AmtAvailable - intreqID8;
	}
	
	if(id9AmtAvailable < intreqID9)
	{
		updateCalc2ID9 = id9AmtAvailable;
	}else
	{
		updateCalc1ID9 = id9AmtAvailable - intreqID9;
	}
	
	//Writing to an output file for record keeping
	
	PrintStream fileOut = new PrintStream("C:/Users/aimly/BeatTheCov-workspace/BeatTheCov/WebContent/output.txt");
	System.setOut(fileOut);
	System.out.println("Requester: " + requestBy);
	System.out.println(" ");
	System.out.println("Hand Sanitizer: ");
	System.out.println("Amount Available: " + id1AmtAvailable);
	System.out.println("Amount Requested: " + intreqID1);
	System.out.println("Amount Left After Request: " + invUpdate1);
	System.out.println(" ");
	
	System.out.println("Face Masks: ");
	System.out.println("Amount Available: " + id2AmtAvailable);
	System.out.println("Amount Requested: " + intreqID2);
	System.out.println("Amount Left After Request: " + invUpdate2);
	System.out.println(" ");
	
	System.out.println("Home Surgical Masks: ");
	System.out.println("Amount Available: " + id3AmtAvailable);
	System.out.println("Amount Requested: " + intreqID3);
	System.out.println("Amount Left After Request: " + invUpdate3);
	System.out.println(" ");
	
	System.out.println("Cavi Wipes: ");
	System.out.println("Amount Available: " + id4AmtAvailable);
	System.out.println("Amount Requested: " + intreqID4);
	System.out.println("Amount Left After Request: " + invUpdate4);
	System.out.println(" ");
	
	System.out.println("Disinfectant Wipes: ");
	System.out.println("Amount Available: " + id5AmtAvailable);
	System.out.println("Amount Requested: " + intreqID5);
	System.out.println("Amount Left After Request: " + invUpdate5);
	System.out.println(" ");
	
	System.out.println("Disinfectant Sprays: ");
	System.out.println("Amount Available: " + id6AmtAvailable);
	System.out.println("Amount Requested: " + intreqID6);
	System.out.println("Amount Left After Request: " + invUpdate6);
	System.out.println(" ");
	
	System.out.println("Protective Suits: ");
	System.out.println("Amount Available: " + id7AmtAvailable);
	System.out.println("Amount Requested: " + intreqID7);
	System.out.println("Amount Left After Request: " + invUpdate7);
	System.out.println(" ");
	
	System.out.println("Protective Goggles: ");
	System.out.println("Amount Available: " + id8AmtAvailable);
	System.out.println("Amount Requested: " + intreqID8);
	System.out.println("Amount Left After Request: " + invUpdate8);
	System.out.println(" ");
	
	System.out.println("Disposable Shoe Cover: ");
	System.out.println("Amount Available: " + id9AmtAvailable);
	System.out.println("Amount Requested: " + intreqID9);
	System.out.println("Amount Left After Request: " + invUpdate9);
	System.out.println(" ");
	
	%>
	
	<!-- NOTE: servlets.ConfirmationPage.java redirected this parameter to us here. View the notes in that Java file to see how. -->
	Requested By: <%= requestBy %> <br><br>
	Hand Sanitizer: <%= reqID1 %><br>
	Face Masks: <%= reqID2 %><br>
	Homemade surgical masks: <%= reqID3 %><br>
	Cavi Wipes: <%= reqID4 %><br>
	Disinfectant Wipes: <%= reqID5 %><br>
	Disinfectant Sprays: <%= reqID6 %><br>
	Protective Suits: <%= reqID7 %><br>
	Protective Goggles: <%= reqID8 %><br>
	Disposable Shoe Covers: <%= reqID9 %>
</center></p>
<br><center><a href='http://localhost:8080/BeatTheCov/HomePage' align='center'>Home Page</a></center></br>
</form></body></html>