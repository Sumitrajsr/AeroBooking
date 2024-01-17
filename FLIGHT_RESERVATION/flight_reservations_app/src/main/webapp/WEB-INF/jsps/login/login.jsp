<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - AeroBooking</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #3498db, #2ecc71);
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            width: 50%;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333333;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: white;
            cursor: pointer;
            border: none;
            padding: 15px;
            border-radius: 5px;
            font-size: 18px;
        }

        input[type="submit"]:hover {
            background-color: #2ecc71;
        }

        .error {
            color: #ff0000;
            margin-bottom: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form action="verifyLogin" method="post">
        <h2>Login to AeroBooking</h2>
        <div class="error">${error}</div>
        <input type="text" name="email" placeholder="Email" required/>
        <input type="password" name="password" placeholder="Password" required/>
        <input type="submit" value="Login"/>
    </form>
</body>
</html>
