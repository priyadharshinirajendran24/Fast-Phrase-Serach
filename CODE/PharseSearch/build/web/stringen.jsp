<%-- 
    Document   : stringen
    Created on : Sep 7, 2018, 4:01:03 PM
    Author     : Priya
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        
        <%
            String characters="ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*abcdefghijklmnopqrstuvwxyz{}[]()1234567890";
            String val1="";
            int len=15;
            
            Random rand=new Random();
            
           // int len=rand.nextInt(25);
        char[] text=new char[len];

        for(int i=0;i<len;i++)
        {
            text[i]=characters.charAt(rand.nextInt(characters.length()));
        }
        for(int i=0;i<text.length;i++)
        {
            val1=val1+text[i];
        }

 System.out.print(val1);


            %>
            
         <h1><input type="text" name="string" value="<%=val1%>"></h1>
    </body>
</html>
