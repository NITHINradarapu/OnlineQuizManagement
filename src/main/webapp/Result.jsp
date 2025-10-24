<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
int score = (Integer) request.getAttribute("score");
int total = (Integer) request.getAttribute("total");
int percentage = (int)((score * 100.0) / total);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz Result</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, #4f46e5, #3b82f6);
            color: #fff;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .result-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px 50px;
            border-radius: 20px;
            text-align: center;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.25);
            max-width: 400px;
            width: 100%;
        }

        h2 {
            font-size: 2rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.5rem;
            margin-bottom: 30px;
        }

        .percentage {
            font-size: 1.2rem;
            margin-bottom: 20px;
            color: #22c55e;
            font-weight: 600;
        }

        a {
            text-decoration: none;
            background: #22c55e;
            color: white;
            padding: 12px 25px;
            border-radius: 8px;
            font-weight: 600;
            transition: 0.3s ease;
        }

        a:hover {
            background: #16a34a;
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(34, 197, 94, 0.4);
        }

        .progress-bar {
            height: 20px;
            width: 100%;
            background: rgba(255,255,255,0.2);
            border-radius: 12px;
            margin-bottom: 30px;
            overflow: hidden;
        }

        .progress {
            height: 100%;
            width: <%=percentage%>%;
            background: #22c55e;
            border-radius: 12px 0 0 12px;
            transition: width 1s ease-in-out;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h2>🎉 Quiz Completed!</h2>
        <p>Your Score: <%=score%> / <%=total%></p>
        <div class="progress-bar">
            <div class="progress"></div>
        </div>
        <div class="percentage">Percentage: <%=percentage%>%</div>
        <a href="index.html">Take Again</a>
    </div>
</body>
</html>
