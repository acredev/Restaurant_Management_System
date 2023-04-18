package leekangjo;

import java.sql.*;

public class signup
{
	public int idchk (String id)
	{
		int result = -1;
		try
		{
			// JDBC 드라이버 연결
			Class.forName("com.mysql.jdbc.Driver");
			String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
			String db_username = "root";
			String db_pwd = "root";
			Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
			
			String insertQuery = "SELECT id from member where id = ?";
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			psmt.setString(1, id);
			
			ResultSet rs = psmt.executeQuery();
			
			if (rs.next())
			{
				result = 0;
			}
			else
			{
				result = 1;
			}
			System.out.println("아이디 중복체크 결과 : " + result);
		}
		catch (Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			
		}
		return result;
	}
	
	public int stdnumchk (String stdnum)
	{
		int result = -1;
		try
		{
			// JDBC 드라이버 연결
			Class.forName("com.mysql.jdbc.Driver");
			String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
			String db_username = "root";
			String db_pwd = "root";
			Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
			
			String insertQuery = "SELECT id from member where stdid = ?";
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			psmt.setString(1, stdnum);
			
			ResultSet rs = psmt.executeQuery();
			
			if (rs.next())
			{
				result = 0;
			}
			else
			{
				result = 1;
			}
			System.out.println("학번 중복체크 결과 : " + result);
		}
		catch (Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			
		}
		return result;
	}
}