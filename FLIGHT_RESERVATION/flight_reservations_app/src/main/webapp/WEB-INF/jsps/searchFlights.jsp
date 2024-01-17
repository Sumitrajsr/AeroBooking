<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Flights - AeroBooking</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #3498db;
            color: #ecf0f1;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            transition: background-color 0.5s ease;
        }

        form {
            width: 40%;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: box-shadow 0.5s ease, transform 0.3s ease;
        }

        h2 {
            color: #3498db;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-top: 10px;
            margin-bottom: 5px;
            font-size: 16px;
            color: #333333;
            transition: color 0.5s ease;
        }

        input {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #bdc3c7;
            border-radius: 5px;
            transition: border-color 0.5s ease;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: white;
            cursor: pointer;
            border: none;
            padding: 15px;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.5s ease;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        body:hover {
            background-color: #2ecc71;
        }

        form:hover {
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.2);
            transform: scale(1.02);
        }

        input:focus {
            border-color: #3498db;
        }

        label:hover {
            color: #3498db;
        }
    </style>
</head>
<body>
    <form action="findFlights" method="post">
        <h2>Find Flights</h2>

        <label for="from">Departure City</label>
        <input type="text" name="from" required/>

        <label for="to">Destination City</label>
        <input type="text" name="to" required/>

        <label for="departureDate">Departure Date</label>
        <input type="text" name="departureDate" required/>

        <input type="submit" value="Search"/>
    </form>
</body>
</html>
