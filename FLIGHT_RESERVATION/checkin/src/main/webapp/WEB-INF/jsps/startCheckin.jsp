<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Start Check In</title>
    <style>
        body {
            background-color: #3498db;
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

        form {
            margin-top: 20px;
            animation: slideInUp 1s ease-out;
        }

        input[type="text"], input[type="submit"] {
            padding: 10px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            color: #333;
            background-color: #ecf0f1;
            cursor: pointer;
            transition: background-color 0.3s ease;
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
    <h2>Start Check In</h2>
    <form action="proceedCheckIn" method="post">
        <label for="reservationId">Enter Your Reservation ID:</label>
        <input type="text" id="reservationId" name="id" required/>
        <input type="submit" value="Start Check-In"/>
    </form>

    <script>
        // You can add JavaScript for additional interactivity or animations if needed
    </script>
</body>
</html>
