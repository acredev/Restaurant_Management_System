/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-05-20 18:15:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp.mypage.myinfo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class myinfo_005fpwdchk_005fsend_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");

	//파라미터를 통해 받아온 아이디 값을 변수에 저장
	String user_id = request.getParameter("user_id");
	//세션에 MEMBERID 객체를 저장 (user_id 정보를 가져옴)
	session.setAttribute("MEMBERID", user_id);
	//MEMBERID 객체의 값을 memberId 문자열 변수에 저장
	String memberId = (String)session.getAttribute("MEMBERID");
	//만약, memberId 값이 null 이면 false(비로그인 상태)
	//memberId 값이 무언가 있다면 true(로그인 상태)
	boolean login = memberId == null ? false : true;

      out.write("\r\n");
      out.write("    \r\n");

try
{
	//JDBC 드라이버 연결
	Class.forName("com.mysql.jdbc.Driver");
	String db_address = "jdbc:mysql://127.0.0.1:3306/kyungmin_store";
	String db_username = "root";
	String db_pwd = "root";
	Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
	request.setCharacterEncoding("UTF-8");
	String user_pwd = request.getParameter("pwd");
	
	String insertQuery = "SELECT id, pwd FROM kyungmin_store.member WHERE id=?";
	
	PreparedStatement psmt = connection.prepareStatement(insertQuery);
	
	psmt.setString (1, user_id);
	
	ResultSet result = psmt.executeQuery();
	
	if (result.next() == true)
	{
		String db_user_id = result.getString("id");
		String db_user_pwd = result.getString("pwd");
		
		if (user_id.equals(db_user_id) && user_pwd.equals(db_user_pwd))
		{
      out.write("\r\n");
      out.write("			<!DOCTYPE html>\r\n");
      out.write("			<html>\r\n");
      out.write("				<head>\r\n");
      out.write("					<meta charset=\"utf-8\">\r\n");
      out.write("				</head>\r\n");
      out.write("				<body>\r\n");
      out.write("					<form name=\"myinfo_pwdchk_send\" action=\"myinfo.jsp\" method=\"post\">\r\n");
      out.write("						<input type=\"hidden\" name=\"user_id\" value=\"");
      out.print(user_id );
      out.write("\">;\r\n");
      out.write("						<script type=\"text/javascript\">\r\n");
      out.write("							document.myinfo_pwdchk_send.submit();\r\n");
      out.write("							window.resizeTo(500,800);\r\n");
      out.write("							window.onresize=(_=>{\r\n");
      out.write("								window.resizeTo(500,800);\r\n");
      out.write("							})\r\n");
      out.write("						</script>\r\n");
      out.write("					</form>\r\n");
      out.write("				</body>\r\n");
      out.write("			</html>\r\n");
      out.write("		");

		}
		else
		{
      out.write("\r\n");
      out.write("			<script type=\"text/javascript\">\r\n");
      out.write("				alert(\"비밀번호가 일치하지 않습니다. 다시 시도 바랍니다.\");\r\n");
      out.write("				location.href=\"myinfo_pwdchk.jsp\";\r\n");
      out.write("				document.getElementById(\"pwd\").value=\"\";\r\n");
      out.write("				document.getElementById(\"pwd\").focus();\r\n");
      out.write("			</script>\r\n");
      out.write("		");

		}
	}
	else
	{
      out.write("\r\n");
      out.write("		<script type=\"text/javascript\">\r\n");
      out.write("			alert(\"오류가 발생했습니다.\");\r\n");
      out.write("			location.href=\"myinfo_pwdchk.jsp\";\r\n");
      out.write("			document.getElementById(\"pwd\").value=\"\";\r\n");
      out.write("			document.getElementById(\"pwd\").focus();\r\n");
      out.write("		</script>\r\n");
      out.write("	");

	}
}
catch (Exception ex)
{
	out.print(ex);
}

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
