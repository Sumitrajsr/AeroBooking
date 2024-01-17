<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight Search Results</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            animation: fadeIn 1s ease-in-out;
            background: linear-gradient(45deg, #3498db, #2ecc71);
            background-size: 400% 400%;
            animation: gradientAnimation 8s infinite alternate;
        }

        h2 {
            text-align: center;
            color: #fff;
            margin-top: 0;
            font-size: 36px;
            font-weight: bold;
            letter-spacing: 2px;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            overflow: hidden;
            animation: zoomIn 0.8s ease-in-out;
            transition: box-shadow 0.3s;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ecf0f1;
            color: #34495e;
            transition: background-color 0.3s, color 0.3s;
        }

        th {
            background-color: #2c3e50; /* Dark color for column names */
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #ecf0f1;
        }

        a {
            text-decoration: none;
            color: #e74c3c;
            font-weight: bold;
            transition: color 0.3s;
        }

        a:hover {
            color: #c0392b;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes zoomIn {
            from {
                transform: scale(0.8);
            }
            to {
                transform: scale(1);
            }
        }

        /* Hover effects */
        table:hover {
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.2);
        }

        th:hover {
            background-color: #2c3e50;
        }

        tr:hover {
            transform: scale(1.02);
            transition: transform 0.3s ease-in-out;
        }

        a:hover {
            color: #e44d26;
        }

        /* Animated Background Gradient */
        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }
            100% {
                background-position: 100% 50%;
            }
        }
    </style>
</head>
<body>
    <h2>Flight Search Results</h2>

    <table border="1">
        <tr>
            <th>Airlines</th>
            <th>Departure City</th>
            <th>Arrival City</th>
            <th>Departure Time</th>
            <th>Select Flight</th>
        </tr>
        <c:forEach items="${findFlights}" var="flight">
            <tr>
                <td>${flight.operatingAirlines}</td>
                <td>${flight.departureCity}</td>
                <td>${flight.arrivalCity}</td>
                <td>${flight.estimatedDepartureTime}</td>
                <td><a href="showCompleteReservation?flightId=${flight.id}">Select</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>