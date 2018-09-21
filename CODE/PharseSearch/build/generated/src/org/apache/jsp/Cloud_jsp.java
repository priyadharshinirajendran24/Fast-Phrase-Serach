package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public final class Cloud_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("     <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("         <title>Owner My Files</title>\n");
      out.write("        <style>\n");
      out.write("           \n");
      out.write("            .anker\n");
      out.write("            {\n");
      out.write("                font-family: 'Kaushan Script', cursive ;\n");
      out.write("                font-size: 15px;\n");
      out.write("                margin-top: 25px;\n");
      out.write("            }\n");
      out.write("            .responsive {\n");
      out.write("                width: 100%;\n");
      out.write("                height: auto;\n");
      out.write("            }\n");
      out.write("            #photo\n");
      out.write("{\n");
      out.write("    padding: 0px;\n");
      out.write("    vertical-align: middle;\n");
      out.write("    text-align: center;\n");
      out.write("    width: 100px;\n");
      out.write("    height: 100px;\n");
      out.write("}\n");
      out.write("th{\n");
      out.write("    color:#6600cc;\n");
      out.write("}\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div>\n");
      out.write("         <div class=\"col-sm-2\" style=\"background-color:#333333;height: 900px;\">\n");
      out.write("                <div style=\"margin-top: 50px;\">\n");
      out.write("                    <img  src=\"images/fast2.jpg\" alt=\"Not found\"  class=\"responsive\" >\n");
      out.write("                <br>\n");
      out.write("                </div>\n");
      out.write("             \n");
      out.write("             <div style=\"margin-top:50px;\">\n");
      out.write("<!--                       <img  src=\"images/h1.png\" alt=\"Not found\" style=\"height:30px;width: 30px;\" >&nbsp;&nbsp;-->\n");
      out.write("                <a  style=\"color: #ff0066;font-size: 20px;\" href=\"#\">Welcome &nbsp;\n");
      out.write("\n");
      out.write("                            ");
   
                        try
                        {

                          //String display=session.getAttribute("ownername").toString();
                          //out.println(display);

                        }
                        catch(Exception ex)
                        {
                            System.out.printf("Hai",ex.getMessage());

                        }
                        
      out.write("\n");
      out.write("                \n");
      out.write("                </a><br>\n");
      out.write("                    </div>\n");
      out.write("                <div class=\"anker\">\n");
      out.write("                    <div style=\"margin-top:50px;\">\n");
      out.write("                       <img  src=\"images/h1.png\" alt=\"Not found\" style=\"height:30px;width: 30px;\" >&nbsp;&nbsp;\n");
      out.write("                        <a  style=\"color: white;\" href=\"OwnerHome.jsp\">DataOwner Home</a><br>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div style=\"margin-top:50px;\">\n");
      out.write("                        <img  src=\"images/upload.png\" alt=\"Not found\" style=\"height:30px;width: 30px;margin: 0;\" >&nbsp;&nbsp;\n");
      out.write("                        <a style=\"color: white;\" href=\"Upload.jsp\">Upload</a><br>\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"margin-top:50px;\">\n");
      out.write("                        <img  src=\"images/file.png\" alt=\"Not found\" style=\"height:30px;width: 30px;\" >&nbsp;&nbsp;\n");
      out.write("                       <a style=\"color: white;\" href=\"Myfiles.jsp\">My Files</a><br>\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"margin-top: 50px;\" >\n");
      out.write("                        <img  src=\"images/approval.gif\" alt=\"Not found\" style=\"height:30px;width: 30px;\" >&nbsp;&nbsp;\n");
      out.write("                        <a style=\"color: white;\" href=\"Approval.jsp\">Approval</a><br>\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"margin-top: 50px;\" >\n");
      out.write("                        <img  src=\"images/shutdown.png\" alt=\"Not found\" style=\"height:30px;width: 30px;\" >&nbsp;&nbsp;\n");
      out.write("                        <a style=\"color: white;\" href=\"index.jsp\">Logout</a><br>\n");
      out.write("                    </div>\n");
      out.write("                \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("             <div class=\"col-sm-1\" style=\"background-color:skyblue;height: 900px;\">\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("             <div  align class=\"col-sm-8\" style=\"background-color:whitesmoke;height: 900px;\">\n");
      out.write("                \n");
      out.write("                 <h3 style=\"text-align: center;font-family: 'Kaushan Script', cursive;margin-top: 30px;\">\n");
      out.write("                    Showing My Files\n");
      out.write("                 </h3>\n");
      out.write("                 \n");
      out.write("                 <br>\n");
      out.write("                 <br>\n");
      out.write("                 <div class=\"container-fluid\">\n");
      out.write("                 <table  class=\"table table-bordered\" >\n");
      out.write("                     \n");
      out.write("                     <tr>\n");
      out.write("                          <th>\n");
      out.write("                            ID\n");
      out.write("                         </th>\n");
      out.write("                         <th>\n");
      out.write("                            DO NAME\n");
      out.write("                         </th>\n");
      out.write("                          <th>\n");
      out.write("                            FILE NAME\n");
      out.write("                         </th>\n");
      out.write("                         \n");
      out.write("                          <th>\n");
      out.write("                             KEYWORDS\n");
      out.write("                         </th>\n");
      out.write("                         \n");
      out.write("                         <th>\n");
      out.write("                             DECRYPTION KEY\n");
      out.write("                         </th>\n");
      out.write("                          <th>\n");
      out.write("                             ACTION\n");
      out.write("                         </th>\n");
      out.write("                     </tr>\n");
      out.write("                     \n");
      out.write("                \n");
      out.write("                     ");

                         try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/phrase","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,j;
   
   String display=session.getAttribute("ownername").toString();
       String query="select * from decryptfile where uname='"+display+"'";
       y=at.executeQuery(query);
       
  while(y.next())
       {
//          String a=y.getString("fname");
//          String b=y.getString("key1");
//          String c=y.getString("key2");
//          String d=y.getString("key3");
//          String e=y.getString("deckey");
           

          
      out.write("\n");
      out.write("      \n");
      out.write("                     \n");
      out.write("          <tr style=\"font-size: 12px;\">\n");
      out.write("                           <td style=\"color: #00cc33;\">\n");
      out.write("                             ");
      out.print(y.getInt("id"));
      out.write("\n");
      out.write("                         </td>\n");
      out.write("                            \n");
      out.write("                         <td style=\"color: #00cc33;\">\n");
      out.write("                             ");
      out.print(y.getString("uname"));
      out.write("\n");
      out.write("                         </td>\n");
      out.write("                          \n");
      out.write("                         <td style=\"color: #00cc33;\">\n");
      out.write("                             ");
      out.print(y.getString("fname"));
      out.write("\n");
      out.write("                         </td>\n");
      out.write("                         \n");
      out.write("                          <td style=\"color: #00cc33;\">\n");
      out.write("                              KEYWORD 1: ");
      out.print(y.getString("key1"));
      out.write("<br>\n");
      out.write("                              KEYWORD 2: ");
      out.print(y.getString("key2"));
      out.write("<br>\n");
      out.write("                              KEYWORD 3:  ");
      out.print(y.getString("key3"));
      out.write("\n");
      out.write("                         </td>\n");
      out.write("                         \n");
      out.write("                         <td style=\"color: #00cc33;\">\n");
      out.write("                              ");
      out.print(y.getString("deckey"));
      out.write("\n");
      out.write("                         </td>\n");
      out.write("                          <td style=\"color: #00cc33;\">\n");
      out.write("                              <img  src=\"images/dlt.png\" alt=\"Not found\" style=\"height:20px;width: 20px;\" >\n");
      out.write("                              <a href=\"DelConn.jsp?fid=");
      out.print(y.getInt("id"));
      out.write("\" style=\"text-decoration: none;color: #ff0000;\">Delete</a>\n");
      out.write("                         </td>\n");
      out.write("                     </tr>\n");
      out.write("                      ");
  }
          
   }
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
                         
                         
      out.write("\n");
      out.write("                     \n");
      out.write("                 </table>\n");
      out.write("</div>\n");
      out.write("                  \n");
      out.write("                 \n");
      out.write("            </div> \n");
      out.write("             \n");
      out.write("             <div class=\"col-sm-1\" style=\"background-color:skyblue;height: 900px;\">\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
