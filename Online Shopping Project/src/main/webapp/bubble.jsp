<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Bubbles Animation</title>
    <style type="text/css">
        .wrapper {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        .dot {
            display: inline-block;
            width: 50px;
            height: 50px;
            border-radius: 25px;
            background-color: #ff7f50;
            margin: 10px;
            animation: bubble 2s ease-in-out infinite;
        }

        @keyframes bubble {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.2);
            }
            100% {
                transform: scale(1);
            }
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <h1>Bubbles Animation</h1>
        <% for(int i=0; i<15; i++){ %>
            <div><span class="dot"></span></div>
        <% } %>
    </div>
</body>
</html>
