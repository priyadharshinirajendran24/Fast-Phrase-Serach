<%   String fname=session.getAttribute("filename").toString();
//String fname="JAVASCRIPT"; 
out.print(fname);
  String filename = fname+".docx";  
  //.println("hai");
  String filepath = "C:\\uploads\\";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();   
%>  