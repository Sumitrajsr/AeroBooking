<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation Details</title>
</head>
<body>
	<h2>Reservation Details</h2>
	Passenger Name:${reservation.getPassenger().firstName}<br/>
	Passenger email:${reservation.getPassenger().email}<br/>
	Passenger Phone:${reservation.getPassenger().phone}<br/>
	Operating Airline:${reservation.getFlight().flightNumber}<br/>
	DepartureCity   :${reservation.getFlight().departureCity}<br/>
	ArrivalCity   :${reservation.getFlight().arrivalCity}<br/>
	dateOfDeparture   :${reservation.getFlight().dateOfDeparture}<br/>
	
	<h2>Update Number of Bags and Status</h2>
	
	<form action="proceedToCheckIn" method="post">
	<pre>
	Reservation id:<input type="text" name="id" value="${reservation.id}" readonly="readonly"/>
	Number of Bag:<input type="text" name="numberOfBags"/>
	
	<input type="submit" value="confirm"/>
	</pre>
	</form>
	
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Details</title>
    <style>
        body {
            background-color: #3498db;
            color: #fff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            animation: fadeIn 1s ease-out; /* Add a fade-in animation */
        }

        h2 {
            color: #ecf0f1;
            border-bottom: 2px solid #ecf0f1;
            padding-bottom: 5px;
        }

        form {
            margin-top: 20px;
            animation: slideInUp 1s ease-out; /* Add a slide-in-up animation */
        }

        pre {
            font-size: 16px;
        }

        input[type="text"], input[type="submit"] {
            padding: 10px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            color: #333;
            background-color: #ecf0f1;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideInUp {
            from {
                transform: translateY(50px);
            }
            to {
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <h2>Reservation Details</h2>
    <p>Passenger Name: ${reservation.getPassenger().firstName}</p>
    <p>Passenger Email: ${reservation.getPassenger().email}</p>
    <p>Passenger Phone: ${reservation.getPassenger().phone}</p>
    <p>Operating Airline: ${reservation.getFlight().flightNumber}</p>
    <p>Departure City: ${reservation.getFlight().departureCity}</p>
    <p>Arrival City: ${reservation.getFlight().arrivalCity}</p>
    <p>Date of Departure: ${reservation.getFlight().dateOfDeparture}</p>

    <h2>Update Number of Bags and Status</h2>
    
    <form action="proceedToCheckIn" method="post">
        <pre>
            Reservation ID: <input type="text" name="id" value="${reservation.id}" readonly="readonly"/>
            Number of Bags: <input type="text" name="numberOfBags"/>
        
            <input type="submit" value="Confirm"/>
        </pre>
    </form>

    <script>
        // Add JavaScript for additional interactivity or animations if needed
    </script>
</body>
</html>
