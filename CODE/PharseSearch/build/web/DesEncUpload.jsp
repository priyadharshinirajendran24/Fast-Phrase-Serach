<%@page import="java.io.InputStream"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<%!
private static String algorithm = "DESede";
        private static Key key = null;
        private static Cipher cipher = null;
 private static byte[] encrypt(String input)throws Exception {
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byte[] inputBytes = input.getBytes();
            return cipher.doFinal(inputBytes);
        }
%>


<%!
        private static String decrypt(byte[] encryptionBytes)throws Exception {
            cipher.init(Cipher.DECRYPT_MODE, key);
            byte[] recoveredBytes =  cipher.doFinal(encryptionBytes);
            String recovered =  new String(recoveredBytes);
            return recovered;
          }
%>


<%
    String fname=request.getParameter("fname");
    String k1=request.getParameter("key1");
    String k2=request.getParameter("key2");
    String k3=request.getParameter("key3");
//    String fileDoc=request.getParameter("file");
//    InputStream inputStream = null;
//     Part filePart = request.getPart("fileDoc");
//
//      if (filePart != null) {
//            // prints out some information for debugging
//            System.out.println(filePart.getName());
//            System.out.println(filePart.getSize());
//            System.out.println(filePart.getContentType());
//
//            // obtains input stream of the upload file
//            inputStream = filePart.getInputStream();
//        }
     
    StringBuffer buffer=new StringBuffer();
    key = KeyGenerator.getInstance(algorithm).generateKey();
    cipher = Cipher.getInstance(algorithm);
    
    String a=k1;
    String b=k2;
    String c=k3;
      String d="filename";
    //String d=fileDoc;
    String fileDoc="filename";

    byte[] encryptionBytes1 = encrypt(a);
    String word1=new String(encryptionBytes1);
    
    byte[] encryptionBytes2 = encrypt(b);
    String word2=new String(encryptionBytes2);
    
    byte[] encryptionBytes3 = encrypt(c);
    String word3=new String(encryptionBytes3);
    
    byte[] encryptionBytes4 = encrypt(d);
    String fdoc=new String(encryptionBytes3);
    
//    byte[] encryptionBytes4 = encrypt(d);
 

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phrase","root","root");
      ResultSet M;
   Statement at=con.createStatement();
   //random genration of strings
   
   
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

 //out.println(val1);


           
   String uname=session.getAttribute("ownername").toString();
   
  
    PreparedStatement st=con.prepareStatement("insert into encryptfile(fname,key1,key2,key3,fdoc,enckey,uname) values(?,?,?,?,?,?,?)");
    
    st.setString(1,fname);
    st.setString(2,word1);
    st.setString(3,word2);
    st.setString(4,word3);
    st.setString(5,fdoc);
    st.setString(6,val1);
    st.setString(7,uname);
     int i = st.executeUpdate();
    // out.println(fdoc);
   
    
     //out.println("hai");
    if(i>0)
{
  String jj="insert into decryptfile(fname,key1,key2,key3,fdoc,deckey,uname) values('"+fname+"','"+k1+"','"+k2+"','"+k3+"','"+fileDoc+"','"+val1+"','"+uname+"')";
  int j=at.executeUpdate(jj);
  if(j>0)
  {
    response.sendRedirect("Upload.jsp"); 
  }
  else
  {
       response.sendRedirect("index.html");
  }
}
else
{
    response.sendRedirect("index.html");
}

    st.close();
   
}

catch(Exception ex)
{
    System.out.println(ex);
}
%>