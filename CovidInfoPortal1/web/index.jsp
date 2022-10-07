
<html>
    <body>

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Covid Portal</title>
       
    </head>
</head>
<h2 style="text-align: center;background-color: blue;color: wheat;" class="bg-primary"> Covid Information Portal</h2>
<%  try {
        String sql = "SELECT SUM(total) FROM COVIDINFO";
        java.sql.Connection con = mypkg.Utility.connect();
         java.sql.PreparedStatement ps = con.prepareStatement(sql);
            java.sql.ResultSet rs = ps.executeQuery();
            rs.next();
            String totalCases = rs.getString(1);
        con.close();
        out.println("<h6>Total Covid Cases : " + totalCases + "</h6>");
    } catch (Exception e) {

    }
%>
<hr>
<hr>

<form action="VerifyUser" method="get" class="center" >
    <table >
        <tr>
            <td > Email/Uid</td>
            <td><input type="text" name="uid" /></td>
        </tr>
        <tr>
            <td> Password </td>
            <td>  <input type="password" name="password" /></td>
        </tr>
        <tr>
            <td> UserType </td>
            <td><select name="utype" ><option selected>Open this select menu</option><option>enduser</option><option>state-admin</option><option>super-admin</option></select></td>
        </tr>
        <tr>
            <td><input  type="submit" value="Login"  "/></td><td><input type="reset"/></td>
        </tr>
    </table>

</form>
<hr>
<a style="color:blue;" href="registration.jsp">New-User-Registration</a><br>
<a style="color:blue;" href="helpline.jsp">Covid-Helpline-Nos</a>
</body>
</html>
<%@include file="info.jsp" %> 