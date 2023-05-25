/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-05-25 11:17:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("메인 화면입니다.\r\n");
      out.write(" -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");

	//login_second.jsp 에서 겨처왔을 경우,
	//파라미터를 통해 받아온 아이디 값을 변수에 저장
	String user_id = request.getParameter("id");
	//세션에 MEMBERID 객체를 저장 (user_id 정보를 가져옴)
	session.setAttribute("MEMBERID", user_id);
	//MEMBERID 객체의 값을 memberId 문자열 변수에 저장
	String memberId = (String)session.getAttribute("MEMBERID");
	//만약, memberId 값이 null 이면 false(비로그인 상태)
	//memberId 값이 무언가 있다면 true(로그인 상태)
	boolean login = memberId == null ? false : true;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width-device-width,initial-scale-1.0,user-scalable=no\">\r\n");
      out.write("        <title>LEEKANGJO - 경민대 밥집</title>\r\n");
      out.write("        <!-- 페이지 디자인을 위한 CSS 선언 -->\r\n");
      out.write("        <link href=\"css/index.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"css/Header.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"css/buttonST.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link rel=\"icon\" href=\"./img/favicon1.png\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("    <form name=\"index\" method=\"post\">\r\n");
      out.write("        <header>\r\n");
      out.write("            <img src=\"img/MainLogo.png\" class=\"Logoimg\" onclick=\"detail_click()\">\r\n");
      out.write("            ");

            	// 만약, 로그인 상태가 true라면
            	if (login)
            	{
      out.write("\r\n");
      out.write("            		<img src=\"img/logout.png\" class=\"logout\" onclick =\"location.href='./jsp/certification/sessionLogout.jsp'\">\r\n");
      out.write("            		<img src=\"img/myimg.png\" class=\"myimg\" onclick =\"mypage_click(user_id)\">\r\n");
      out.write("            		<img src=\"img/find.png\" class=\"find\" onclick=\"alert('잠시 후 시도해주세요.')\">\r\n");
      out.write("            		<input type=\"hidden\" id=\"user_id\" name=\"user_id\" value=\"");
      out.print(user_id );
      out.write("\">\r\n");
      out.write("            	");

            	}
            	// 로그인 상태가 false라면
            	else
            	{
      out.write("\r\n");
      out.write("            		<h1 onclick =\"location.href='jsp/login/login_first.jsp'\">Login</h1>\r\n");
      out.write("            	");

            	}
            
      out.write("\r\n");
      out.write("        </header>\r\n");
      out.write("        <div id=\"tagbar\">\r\n");
      out.write("            <button class=\"tagbarBT\">영업중</button>\r\n");
      out.write("            <button class=\"tagbarBT\">예약</button>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"wrapper\">\r\n");
      out.write("     	   <div id=\"columns\">\r\n");
      out.write("        ");

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
            
            String insertQuery = "SELECT * FROM kyungmin_store.store_info";
            
            PreparedStatement psmt = connection.prepareStatement(insertQuery);
            
            ResultSet result = psmt.executeQuery();
            
            while (result.next())
            {
            System.out.println(result.getString("img_route"));
            
      out.write("\r\n");
      out.write("            	<div class=\"card\" onclick=\"detail_click()\">\r\n");
      out.write("          	  		<img src=\"");
      out.print(result.getString("img_route") );
      out.write("\" alt=\"로딩오류\">\r\n");
      out.write("         	   		<p>");
      out.print(result.getString("name") );
      out.write("</p>\r\n");
      out.write("         	   		<input type=\"hidden\" type=\"text\" id=\"store_num\" name=\"store_num\" value=\"");
      out.print(result.getString("store_num") );
      out.write("\">\r\n");
      out.write("         	   		<a>예약 가능 | 포장 가능 | 소요시간 10~15분</a>\r\n");
      out.write("         	   		<span>대기상황 : 2</span>\r\n");
      out.write("        		</div>\r\n");
      out.write("        	");

            }
        }
        catch (Exception ex)
        {
        	out.print(ex);	
        }
        
      out.write("	\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </form>\r\n");
      out.write("    </body>\r\n");
      out.write("    <script src=\"./js/index.js\"></script>\r\n");
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
