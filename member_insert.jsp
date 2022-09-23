<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 피라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<% 
			request.setCharacterEncoding("UTF-8");
			
			Enumeration paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String name = (String) paramNames.nextElement();
				out.print("<tr><td>" + name + "</td>\n");
				if(request.getParameterValues(name).length > 1){
					String[] paramValues = request.getParameterValues(name);
					out.println("<td>");
					for(int i=0; i<paramValues.length;i++){
						out.print(" "+paramValues[i]);
					}
					out.println("</td>");
				}
				else {
					String paramValue = request.getParameter(name);
					out.println("<td>"+ paramValue + "</td>");
				}
			}
		%>
		</table>
</body>
</html>