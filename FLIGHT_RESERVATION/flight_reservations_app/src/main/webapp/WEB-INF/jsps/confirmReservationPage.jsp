<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmation</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-image: linear-gradient(to right, #87CEEB, #6A5ACD);
            color: #333;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .confirmation-message {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
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
    <h1>Reservation Confirmation</h1>

    <div class="confirmation-message">
        <p>Hello! Thank you for choosing our AeroBooking. Your Ticket Is Booked. Your reservation id is: ${reservationId}</p>
    </div>
</body>
</html>
