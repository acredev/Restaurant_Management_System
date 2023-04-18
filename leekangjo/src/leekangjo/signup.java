/*
 * 회원가입 기능을 구현하는 자바 class 파일입니다.
 * - 구현기능
 *    1. idchk() : 아이디 중복확인
 *        - 1 : 사용 가능한 아이디를 알립니다.
 *        - 0 : 사용 불가능한 아이디를 알립니다. (DB에서의 중복)
 *        - -1 : 오류를 알립니다.
 *    2. stdnumchk() : 학번 중복확인
 *        - 1 : 사용 가능한 학번을 알립니다.
 *        - 0 : 사용 불가능한 학번을 알립니다. (DB에서의 중복)
 *        - -1 : 오류를 알립니다.
 */

package leekangjo;

import java.sql.*;

public class signup
{
	public int idchk (String id)
	{
		// 아이디 중복체크 결과용 정수형 result 변수 선언
		int result = -1;
		try
		{
			// JDBC 드라이버 연결
			Class.forName("com.mysql.jdbc.Driver");
			String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
			String db_username = "root";
			String db_pwd = "root";
			Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
			
			// 아이디 중복확인을 위한 DB 쿼리문 전송
			String insertQuery = "SELECT id from member where id = ?";
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			psmt.setString(1, id);
			
			ResultSet rs = psmt.executeQuery();
			
			if (rs.next())
			{
				// DB에 쿼리문을 넘기고, 반환된 값이 있다면 그 아이디는 사용 불가능한 아이디
				result = 0;
			}
			else
			{
				// DB에 쿼리문을 넘기고, 반환된 값이 없다면 그 아이디는 사용 가능한 아이디
				result = 1;
			}
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
		// 학번 중복체크 결과용 정수형 result 변수 선언
		int result = -1;
		try
		{
			// JDBC 드라이버 연결
			Class.forName("com.mysql.jdbc.Driver");
			String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
			String db_username = "root";
			String db_pwd = "root";
			Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
			
			// 학번 중복확인을 위한 DB 쿼리문 전송
			String insertQuery = "SELECT id from member where stdid = ?";
			PreparedStatement psmt = connection.prepareStatement(insertQuery);
			psmt.setString(1, stdnum);
			
			ResultSet rs = psmt.executeQuery();
			
			if (rs.next())
			{
				// DB에 쿼리문을 넘기고, 반환된 값이 있다면 그 학번은 사용 불가능한 학번
				result = 0;
			}
			else
			{
				// DB에 쿼리문을 넘기고, 반환된 값이 있다면 그 학번은 사용 가능한 학번
				result = 1;
			}
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