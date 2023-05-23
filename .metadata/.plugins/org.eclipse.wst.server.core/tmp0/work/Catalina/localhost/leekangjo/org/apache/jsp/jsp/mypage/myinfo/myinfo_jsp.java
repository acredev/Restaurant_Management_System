/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-05-23 00:18:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp.mypage.myinfo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class myinfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("마이페이지 > 나의 정보 화면입니다.\r\n");
      out.write(" -->\r\n");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"utf-8\">\r\n");
      out.write("	    <title>LEEKANGJO - 마이페이지</title>\r\n");
      out.write("	    <link href=\"../../../css/mypage.css\" rel=\"stylesheet\">\r\n");
      out.write("	    <link href=\"../../../css/buttonST.css\" rel=\"stylesheet\">\r\n");
      out.write("	    <link rel=\"icon\" href=\"../../../img/favicon1.png\" type=\"image/x-icon\" sizes=\"16x16\">\r\n");
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
            
            String insertQuery = "SELECT * FROM kyungmin_store.member WHERE id=?";
            
            PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            psmt.setString(1, user_id);
            
            ResultSet result = psmt.executeQuery();
            
            if (result.next() == true)
            {
      out.write("\r\n");
      out.write("            	<form name=\"myinfo\" class=\"myinfo\" action=\"myinfo_update_send.jsp\" method=\"post\">\r\n");
      out.write("    	    	<div class=\"outBox\">\r\n");
      out.write("    		    	<div class=\"boxtitle\">\r\n");
      out.write("        	    		<a class=\"topid\">나의 정보</a>\r\n");
      out.write("                        <hr>\r\n");
      out.write("                   		<div class=\"form-item\">\r\n");
      out.write("	                        <a>이름</a>\r\n");
      out.write("                   			<input type=\"text\" id=\"user_name\" name=\"user_name\" value=\"");
      out.print(result.getString("name") );
      out.write("\" readonly >\r\n");
      out.write("                        	<a>아이디 </a>\r\n");
      out.write("                        	<input type=\"text\" id=\"user_id\" name=\"user_id\" value=\"");
      out.print(result.getString("id") );
      out.write("\" readonly >\r\n");
      out.write("	                        <a>학번</a>\r\n");
      out.write("                        	<input type=\"number\" id=\"user_stdid\" name=\"user_stdid\" value=\"");
      out.print(result.getString("stdid") );
      out.write("\" readonly >\r\n");
      out.write("                        	<a>이메일</a>\r\n");
      out.write("                        	<input type=\"text\" id=\"user_email\" name=\"user_email\" value=\"");
      out.print(result.getString("email") );
      out.write("\" readonly >\r\n");
      out.write("                        	<input type=\"hidden\" id=\"emailchk\" name=\"emailchk\" value=\"email_chkno\">\r\n");
      out.write("                        	<button type=\"button\" id=\"email_change\" class=\"tagbarBT\" onclick=\"myinfo_emailchange()\">이메일 변경 (이메일 인증)</button>\r\n");
      out.write("	                        <a>전화번호</a>\r\n");
      out.write("                        	<input type=\"number\" id=\"user_tel\" name=\"user_tel\" value=\"");
      out.print(result.getString("tel") );
      out.write("\" readonly >\r\n");
      out.write("                        	<input type=\"hidden\" id=\"telchk\" name=\"telchk\" value=\"tel_chkno\">\r\n");
      out.write("                        	<button type=\"button\" id=\"telnum_change\" class=\"tagbarBT \" onclick=\"myinfo_telchange()\">전화번호 변경 (SMS 인증)</button>\r\n");
      out.write("                        	<button type=\"button\" id=\"pw_change\" class=\"tagbarBT \" onclick=\"alert('민혁선배. 잠깐만 이리 와주세요.')\">비밀번호 변경</button>\r\n");
      out.write("                        	<hr>\r\n");
      out.write("    	    			</div>\r\n");
      out.write("                    <div class=\"btnbox\">\r\n");
      out.write("        			<button type=\"button\" id=\"myinfo_cancle\" onclick=\"location.href='../mypage.jsp'\" class=\"tagbarBT\">취소</button>\r\n");
      out.write("        			<button type=\"submit\" id=\"myinfo_save\" onclick=\"alert('민혁선배. 잠깐만 이리 와주세요.')\" class=\"tagbarBT\">저장</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("    			</div>\r\n");
      out.write("                </div>\r\n");
      out.write("    		</form>\r\n");
      out.write("    		");

            }
            else
            {
      out.write("\r\n");
      out.write("            	<form name=\"myinfo\" class=\"myinfo\" method=\"post\">\r\n");
      out.write("    	    		<div class=\"outBox\">\r\n");
      out.write("		    			<div class=\"boxtitle\">\r\n");
      out.write("        					<img src=\"../../../img/Logo4_warning.png\" alt=\"\" class=\"loginImg\" onclick=\"location.href='../../../index.jsp'\">\r\n");
      out.write("        					<h1>회원정보가 없습니다.</h1>\r\n");
      out.write("    					</div>\r\n");
      out.write("					</div>\r\n");
      out.write("    			</form>\r\n");
      out.write("            ");

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
      out.write("		<form name=\"myinfo\" class=\"myinfo\" method=\"post\">\r\n");
      out.write("			<div class=\"outBox\">\r\n");
      out.write("				<div class=\"boxtitle\">\r\n");
      out.write("        			<img src=\"../../../img/Logo4_warning.png\" alt=\"\" class=\"loginImg\" onclick=\"location.href='../../../index.jsp'\">\r\n");
      out.write("        			<h1>비로그인 상태입니다.</h1>\r\n");
      out.write("    			</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</form>\r\n");
      out.write("	");

	}
	
      out.write("\r\n");
      out.write("	</body>\r\n");
      out.write("	<script src=\"../../../js/mypage.js\"></script>\r\n");
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
