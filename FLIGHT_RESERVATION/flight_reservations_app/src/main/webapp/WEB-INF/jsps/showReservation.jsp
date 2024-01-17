<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation</title>
</head>
<body>
	<h2>Flight Details</h2>
	Flight Number: ${flight.flightNumber} <br/>
	Operating Airlines: ${flight.operatingAirlines} <br/>
	Departure City: ${flight.departureCity} <br/>
	Arrival City: ${flight.arrivalCity} <br/>
	Date Of Departure: ${flight.dateOfDeparture} <br/>
	Estimated DepartureTime: ${flight.estimatedDepartureTime} <br/>
	
	<h2>Passenger Details</h2>
	
	<form action="confirmRegistration" method="post">
	<pre>
		First Name <input type="text" name="firstName"/> <br/>
		last Name  <input type="text" name="lastName"/><br/>
	    Middle Name    <input type="text" name="middleName"/><br/>
		Email      <input type="text" name="email"/> <br/>
		Phone      <input type="text" name="phone"/> <br/>
		<input type="hidden" name="flightId" value="${flight.id}"/><br/>
		
		
		<h2>Enter the card details</h2>
		
		Name of the Card   <input type="text" name="nameHolderName"/><br/>
		Card Number  <input type="text"  name="cardNumber"/><br/>
		CVV          <input type="text" name="cvv"/><br/>
		Expiry Date  <input type="date" name="expireDate" /><br/>
		
		<input type="submit" value="complete Reservation">
	</pre>
	</form> 
</body>
</html>
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reservation</title>
    <style>
        body {
            animation: fadeIn 1s ease-in-out;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #ff7e5f, #feb47b); /* Gradient background */
            color: #333; /* Dark text color */
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        header {
            background: #2C3E50; /* Dark header background */
            color: #fff; /* White text color */
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2); /* Subtle shadow effect */
        }

        h2 {
            animation: slideIn 1s ease-in-out;
            color: #3498db; /* Blue text color */
            margin-top: 20px;
        }

        form {
            background: #fff; /* White form background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Subtle shadow effect */
            display: flex;
            flex-direction: column;
            width: 300px;
            margin: auto;
        }

        label {
            margin-bottom: 10px;
            color: #333; /* Dark text color */
            font-weight: bold;
        }

        input {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: calc(100% - 22px);
        }

        input[type="submit"] {
            background: #3498db; /* Blue submit button background */
            color: #fff; /* White text color */
            cursor: pointer;
            transition: background 0.3s ease; /* Smooth transition on hover */
        }

        input[type="submit"]:hover {
            background: #2980B9; /* Darker blue on hover */
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            from {
                transform: translateY(-20px);
            }
            to {
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Reservation</h1>
    </header>

    <h2>Flight Details</h2>
    Flight Number: ${flight.flightNumber} <br/>
    Operating Airlines: ${flight.operatingAirlines} <br/>
    Departure City: ${flight.departureCity} <br/>
    Arrival City: ${flight.arrivalCity} <br/>
    Date Of Departure: ${flight.dateOfDeparture} <br/>
    Estimated Departure Time: ${flight.estimatedDepartureTime} <br/>

    <h2>Passenger Details</h2>

    <form action="confirmRegistration" method="post">
        <label>First Name <input type="text" name="firstName"/></label>
        <label>Last Name <input type="text" name="lastName"/></label>
        <label>Middle Name <input type="text" name="middleName"/></label>
        <label>Email <input type="text" name="email"/></label>
        <label>Phone <input type="text" name="phone"/></label>
        <input type="hidden" name="flightId" value="${flight.id}"/>

        <h2>Enter the card details</h2>

        <label>Name of the Card <input type="text" name="nameHolderName"/></label>
        <label>Card Number <input type="text" name="cardNumber"/></label>
        <label>CVV <input type="text" name="cvv"/></label>
        <label>Expiry Date <input type="date" name="expireDate"/></label>

        <input type="submit" value="Complete Reservation">
    </form>
</body>
</html>
  