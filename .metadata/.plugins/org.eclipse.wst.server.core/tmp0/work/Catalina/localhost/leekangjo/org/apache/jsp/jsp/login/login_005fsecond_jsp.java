/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-04-27 13:21:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_005fsecond_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!-- \r\n");
      out.write("로그인 (비밀번호) 화면입니다.\r\n");
      out.write(" -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("	    <meta charset=\"utf-8\">\r\n");
      out.write("	    <title>LEEKANGJO - 로그인</title>\r\n");
      out.write("	    <link href=\"../../css/LoginMain.css\" rel=\"stylesheet\">\r\n");
      out.write("	    <link href=\"../../css/buttonST.css\" rel=\"stylesheet\">\r\n");
      out.write("	    <link href=\"../../css/iconST.css\" rel=\"stylesheet\">\r\n");
      out.write("	    <link href=\"../../css/signup_second.css\" rel=\"stylesheet\">\r\n");
      out.write("	    <link rel=\"icon\" href=\"../../img/favicon1.png\" type=\"image/x-icon\" sizes=\"16x16\">\r\n");
      out.write("	    <script src=\"https://kit.fontawesome.com/fd1cbb6da4.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.js\"></script>\r\n");
      out.write("        <script src=\"../../js/pwE_login.js\"></script>\r\n");
      out.write("        <script src=\"../../js/LoginJS.js\"></script>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("	");

    try
	{
		//JDBC 드라이버 연결
		Class.forName("com.mysql.jdbc.Driver");
		String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
		String db_username = "root";
		String db_pwd = "root";
		Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
        			
        // 문자열의 인코딩 방식 설정
        request.setCharacterEncoding("UTF-8");
        			
        // 파라미터를 통해 받아온 값을 변수에 저장
        String user_id = request.getParameter("id");
        			
        // MySQL로 전송하기 위한 문자열 insertQuery 변수 선언
        String insertQuery = "SELECT id from kyungmin_store.member where id=?;";
        			
        // SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
        PreparedStatement psmt = connection.prepareStatement(insertQuery);
        			
        // 앞서 문자열 쿼리문을 선언했던 VALUES의 ? 값에 하나씩 삽입하여 전송
        psmt.setString(1, user_id);
        			
        ResultSet result = psmt.executeQuery();
        			
		if (result.next() == true)
		{
      out.write("\r\n");
      out.write("			<form name=\"login_second\" action=\"../test/test(login_ok).jsp\" method=\"post\">\r\n");
      out.write("        		<div class=\"outBox\">\r\n");
      out.write("				<div class=\"boxtitle\">\r\n");
      out.write("        			<img src=\"../../img/Logo4.png\" alt=\"\" class=\"loginImg\" onclick=\"location.href='../../index.html'\">\r\n");
      out.write("        			<h1>로그인</h1>\r\n");
      out.write("    			</div>\r\n");
      out.write("    			<div class=\"form-item\" id=\"EyeBox\">\r\n");
      out.write("    				<input type=\"hidden\" id=\"id\" name=\"id\" value=\"");
      out.print(result.getString("id") );
      out.write("\">\r\n");
      out.write("               		<input type=\"password\" id=\"pwd\" name=\"pwd\" placeholder=\"* 비밀번호\" onchange=\"signup_second_pwdchk()\">\r\n");
      out.write("                	<i class=\"fa-solid fa-eye\"></i>\r\n");
      out.write("            	</div>\r\n");
      out.write("    			<button type=\"button\" onclick=\"login_second_check()\" class=\"tagbarBT\">다음</button>\r\n");
      out.write("    			<div class=\"IPSBOX\">\r\n");
      out.write("	    	  	  	<a onclick=\"location.href='../find_pw/find_pw_first.jsp?userid=' + document.login_second.id.value\" class=\"aST\">비밀번호 재설정</a>\r\n");
      out.write("    			</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</form>\r\n");
      out.write("		");

		}
		else
		{
      out.write("\r\n");
      out.write("			<script>\r\n");
      out.write("				alert(\"존재하지 않는 아이디입니다. 다시 시도해 주세요.\");\r\n");
      out.write("				setTimeout(function(){ window.location.href=\"login_first.jsp\"}, 100);\r\n");
      out.write("			</script>\r\n");
      out.write("		");

        }
	}
	catch (Exception ex)
    {
		out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
    }
      out.write("\r\n");
      out.write("	</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
