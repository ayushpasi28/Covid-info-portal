import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class RegistrationServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        //request-read
        //?uid=aaa%40gmail.com&password=ssi&name=abc&address=indore&mobile=9094599445
        String userid = request.getParameter("uid");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String mobile = request.getParameter("mobile");
        //Connection to database
        try{
                 Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con  =  DriverManager.getConnection("jdbc:mysql://localhost:3308/coviddata","root","root");
                 
                 Statement stmt = con.createStatement();
            String Qs="INSERT INTO users VALUES(?,?,?,?,?) ";
          PreparedStatement ps = con.prepareStatement(Qs);
                  ps.setString(1, userid);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, address);
            ps.setString(5, mobile);
            ps.executeUpdate();
             //response
            out.println("<html>");
            out.println("<body>");
            out.println("<h3>Registered-Successfully</h3>");
            out.println("<h4><a href=index.jsp>Login-Now</a></h4>");
            out.println("</body>");
            out.println("</html>");
            }catch(Exception exe){System.out.println("Exception caught"+exe);
            }
    }
}
    