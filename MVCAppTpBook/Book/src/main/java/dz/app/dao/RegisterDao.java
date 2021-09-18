package dz.app.dao;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;

	import dz.app.beans.RegisterBean;

	public class RegisterDao {
		public String authorizeRegister(RegisterBean registerBean)

		{
		String firstname=registerBean.getFirstname();
		String lastname=registerBean.getLastname();
		String username=registerBean.getUsername(); 
		String password=registerBean.getPassword();

		String url= "jdbc:mysql://localhost/db_mvclogin"; 
		String uname= "root";
		String pass= ""; 
		try
		{
		Class. forName("com.mysql.jdbc.Driver"); 
		Connection con=DriverManager.getConnection(url, uname, pass) ;

		PreparedStatement pstmt; 

		pstmt=con.prepareStatement("INSERT INTO users(firstname,lastname,username,password) values(?,?,?,?)");
		pstmt.setString(1, firstname) ;
		pstmt.setString(2, lastname) ;
		pstmt.setString(3, username) ;
		pstmt.setString(4, password) ;
		pstmt.executeUpdate();

		pstmt.close();
		con.close(); 

		return "SUCCESS REGISTER"; 
		}
		catch(Exception e)
		{e.printStackTrace();}

		return "FAIL REGISTER"; 
		}

}
