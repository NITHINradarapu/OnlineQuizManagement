<%@ page import="java.util.*" %>
<%
List<Map<String, String>> questions = (List<Map<String, String>>) request.getAttribute("questions");
int i = 1;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Quiz</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, #2563eb, #1e3a8a);
            color: #fff;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 50px 20px;
        }

        .quiz-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 20px;
            max-width: 800px;
            width: 100%;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.25);
        }

        h2 {
            text-align: center;
            font-size: 2rem;
            margin-bottom: 30px;
            letter-spacing: 1px;
        }

        .question {
            margin-bottom: 25px;
            background: rgba(255, 255, 255, 0.15);
            padding: 20px;
            border-radius: 12px;
        }

        .question b {
            font-size: 1.1rem;
        }

        .options {
            margin-top: 10px;
        }

        label {
            display: block;
            background: rgba(255, 255, 255, 0.2);
            padding: 10px 15px;
            margin: 8px 0;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        label:hover {
            background: rgba(255, 255, 255, 0.35);
            transform: scale(1.02);
        }

        input[type="radio"] {
            accent-color: #22c55e;
            margin-right: 10px;
        }

        input[type="submit"] {
            display: block;
            margin: 30px auto 0;
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            background: #22c55e;
            color: white;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s ease;
        }

        input[type="submit"]:hover {
            background: #16a34a;
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(34, 197, 94, 0.4);
        }
    </style>
</head>
<body>
    <div class="quiz-container">
        <h2>🧠 Online Quiz</h2>
        <form action="ResultServlet" method="post">
            <input type="hidden" name="total" value="<%=questions.size()%>">

            <% for (Map<String, String> q : questions) { %>
                <div class="question">
                    <b>Q<%=i%>. <%=q.get("question")%></b>
                    <div class="options">
                        <label><input type="radio" name="ans<%=i%>" value="<%=q.get("option1")%>"> <%=q.get("option1")%></label>
                        <label><input type="radio" name="ans<%=i%>" value="<%=q.get("option2")%>"> <%=q.get("option2")%></label>
                        <label><input type="radio" name="ans<%=i%>" value="<%=q.get("option3")%>"> <%=q.get("option3")%></label>
                        <label><input type="radio" name="ans<%=i%>" value="<%=q.get("option4")%>"> <%=q.get("option4")%></label>
                        <input type="hidden" name="correct<%=i%>" value="<%=q.get("correct_answer")%>">
                    </div>
                </div>
            <% i++; } %>

            <input type="submit" value="Submit Quiz">
        </form>
    </div>
</body>
</html>
