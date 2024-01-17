<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmation Page</title>
    <style>
        body {
            background-color: #2ecc71;
            color: #fff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            animation: fadeIn 1s ease-out;
        }

        h2 {
            color: #ecf0f1;
            border-bottom: 2px solid #ecf0f1;
            padding-bottom: 5px;
        }

        p {
            font-size: 18px;
            margin-top: 10px;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <h2>Boarding is Completed</h2>
    
    Example Reservation Details (Replace with actual data)
    
    <p>Operating Airline: ${reservation.getFlight().flightNumber}</p>
    <p>Departure City: ${reservation.getFlight().departureCity}</p>
    <p>Arrival City: ${reservation.getFlight().arrivalCity}</p>
    <p>Date of Departure: ${reservation.getFlight().dateOfDeparture}</p>
    <p>Happy Journey</p>

    <script>
        // You can add JavaScript for additional interactivity or animations if needed
    </script>
</body>
</html>
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmation Page</title>
    <style>
        body {
            background-color: #2ecc71;
            color: #fff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            animation: fadeIn 1s ease-out;
            text-align: center;
        }

        h2 {
            color: #ecf0f1;
            border-bottom: 2px solid #ecf0f1;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin: 10px 0;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <h2>Boarding is Completed</h2>

    <%-- Example Reservation Details (Replace with actual data) --%>
    
    <p>Operating Airline: ${reservation.getFlight().flightNumber}</p>
    <p>Departure City: ${reservation.getFlight().departureCity}</p>
    <p>Arrival City: ${reservation.getFlight().arrivalCity}</p>
    <p>Date of Departure: ${reservation.getFlight().dateOfDeparture}</p>
    <p>Happy Journey</p>

    <script>
        // You can add JavaScript for additional interactivity or animations if needed
    </script>
</body>
</html>

