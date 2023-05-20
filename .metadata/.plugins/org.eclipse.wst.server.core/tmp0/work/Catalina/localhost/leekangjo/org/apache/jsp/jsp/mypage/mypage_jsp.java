/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-05-20 18:03:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp.mypage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class mypage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" 	\r\n");
      out.write("\r\n");
      out.write("\r\n");

	String user_id = request.getParameter("user_id");
	session.setAttribute("MEMBERID", user_id);
	String memberId = (String)session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"utf-8\">\r\n");
      out.write("	    <title>LEEKANGJO - 마이페이지</title>\r\n");
      out.write("	    <link href=\"../../css/mypage.css\" rel=\"stylesheet\">\r\n");
      out.write("	    <link href=\"../../css/buttonST.css\" rel=\"stylesheet\">\r\n");
      out.write("	    <link rel=\"icon\" href=\"../../img/favicon1.png\" type=\"image/x-icon\" sizes=\"16x16\">\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("	");
	
	if (login)
	{
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
            
            String insertQuery = "SELECT id, name from kyungmin_store.member where id=?";
            
            PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            psmt.setString(1, user_id);
            
            ResultSet result = psmt.executeQuery();
            
            if (result.next() == true)
            {
            	String user_name = result.getString("name");	
            	System.out.print(user_name);
            	
      out.write("\r\n");
      out.write("            	<form name=\"mypage\" class=\"mypage\" method=\"post\">\r\n");
      out.write("	    			<div class=\"outBox\">\r\n");
      out.write("		    			<div class=\"boxtitle\">\r\n");
      out.write("		        			<img src=\"../../img/Logo4.png\" alt=\"\" class=\"loginImg\" onclick=\"location.href='../../index.jsp'\">\r\n");
      out.write("    	    				<h1>마이페이지</h1>\r\n");
      out.write("                   			<h2>안녕하세요! <input type=\"text\" value=\"");
      out.print(user_name);
      out.write("\"></h2>\r\n");
      out.write("                   			<input type=\"hidden\" name=\"user_id\" id=\"user_id\" value=\"");
      out.print(user_id );
      out.write("\">\r\n");
      out.write("	    				</div>\r\n");
      out.write("    					<button type=\"button\" onclick=\"myinfo_click()\" class=\"tagbarBT\" id=\"btn_id\"> <img src=\"../../img/myimg.png\" class=\"testimg\">나의정보 </button>\r\n");
      out.write("                		<button type=\"button\" onclick=\"alert('잠시 후 시도해주세요.')\" class=\"tagbarBT\" id=\"btn_id\"> <img src=\"../../img/purchase.png\" class=\"testimg\">주문내역 </button>\r\n");
      out.write("                		<button type=\"button\" onclick=\"alert('잠시 후 시도해주세요.')\" class=\"tagbarBT\" id=\"btn_id\"> <img src=\"../../img/review.png\" class=\"testimg\">리뷰관리 </button>\r\n");
      out.write("                		<hr>\r\n");
      out.write("					</div>\r\n");
      out.write("				</form>\r\n");
      out.write("            	");

            }
            else
            {
      out.write("\r\n");
      out.write("            	<form name=\"mypage\" class=\"mypage\" method=\"post\">\r\n");
      out.write("    	    		<div class=\"outBox\">\r\n");
      out.write("						<div class=\"boxtitle\">\r\n");
      out.write("						<a class=\"topid\">오류</a>\r\n");
      out.write("						<hr>\r\n");
      out.write("							<div class=\"form-item\">\r\n");
      out.write("								<h1>잘못된 접근입니다.</h1>\r\n");
      out.write("								<br>\r\n");
      out.write("								<h2>회원정보가 존재하지 않습니다.</h2>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("    			</form>\r\n");
      out.write("    		");

            }
		}
		catch (Exception ex)
		{
			out.print(ex);
		}
	}
	else
	{
      out.write("\r\n");
      out.write("		<form name=\"mypage\" class=\"mypage\" method=\"post\">\r\n");
      out.write("     		<div class=\"outBox\">\r\n");
      out.write("				<div class=\"boxtitle\">\r\n");
      out.write("					<a class=\"topid\">오류</a>\r\n");
      out.write("					<hr>\r\n");
      out.write("					<div class=\"form-item\">\r\n");
      out.write("						<h1>잘못된 접근입니다.</h1>\r\n");
      out.write("						<br>\r\n");
      out.write("						<h2>비로그인 상태로 비정상적인 접근입니다.</h2>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("    	</form>\r\n");
      out.write("	");
		
	}
      out.write("	\r\n");
      out.write("	</body>\r\n");
      out.write("	<script src=\"../../js/mypage.js\"></script>\r\n");
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
