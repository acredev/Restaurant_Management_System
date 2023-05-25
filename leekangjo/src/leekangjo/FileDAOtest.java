package leekangjo;

import java.sql.*;

public class FileDAOtest
{
	private Connection connection;
	
	public FileDAOtest()
	{
		try
		{
			//JDBC 드라이버 연결
			Class.forName("com.mysql.jdbc.Driver");
			String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
			String db_username = "root";
			String db_pwd = "root";
			connection = DriverManager.getConnection(db_address, db_username, db_pwd);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public int upload(String fileName, String fileRealName)
	{
		String insertQuery = "INSERT INTO kyungmin_store.file VALUES (?, ?)";
		try
		{
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			psmt.setString(1, fileName);
			psmt.setString(2, fileRealName);
			return psmt.executeUpdate();
		}
		catch (Exception ex)
		{
			ex.printStackTrace();
		}
		return -1;
	}
}