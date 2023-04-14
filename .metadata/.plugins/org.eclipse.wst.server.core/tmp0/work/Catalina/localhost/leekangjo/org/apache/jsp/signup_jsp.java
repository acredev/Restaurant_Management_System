/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-04-14 02:24:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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

try
{
	// JDBC 드라이버 연결
	Class.forName("com.mysql.jdvc.Driver");
	String db_address = "jdbc.mysql://127.0.0.1:3306/kyungmin_store";
	String db_username = "root";
	String db_pwd = "root";
	Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	
	// 문자열의 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
}
catch (Exception ex)
{
	out.println("페이지 처리 중, 오류가 발생했습니다. 아래의 오류 메시지를 참고하여 페이지 관리자에게 문의 바랍니다. 불편을 드려 죄송합니다.\n" + ex.getMessage());
}

      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width-device-width,initial-scale-1.0,user-scalable=no\">\r\n");
      out.write("        <title>이강조 회원가입</title>\r\n");
      out.write("        <link href=\"css/Header.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"css/signup_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("			function checkValue()\r\n");
      out.write("			{\r\n");
      out.write("				var signupForm = document.signup;\r\n");
      out.write("				if(!signupForm.id.value)\r\n");
      out.write("				{\r\n");
      out.write("					alert(\"아이디를 입력 후 다시 시도해 주세요.\");\r\n");
      out.write("					return false;\r\n");
      out.write("				}\r\n");
      out.write("				if(signupForm.idDuplication.value!=\"idCheck\")\r\n");
      out.write("				{\r\n");
      out.write("					alert(\"아이디 중복 체크 후 다시 시도해 주세요.\");\r\n");
      out.write("					return false;\r\n");
      out.write("				}\r\n");
      out.write("				if(!signupForm.pwd.value)\r\n");
      out.write("				{\r\n");
      out.write("					alert(\"비밀번호를 입력 후 다시 시도해 주세요.\");\r\n");
      out.write("				}\r\n");
      out.write("				if(signupForm.pwd.value != form.pwdcheck.value)\r\n");
      out.write("				{\r\n");
      out.write("					alert(\"비밀번호가 일치하지 않습니다. 비밀번호를 동일하게 입력 후 다시 시도해 주세요.\");\r\n");
      out.write("					return false;\r\n");
      out.write("				}\r\n");
      out.write("				if(!signupForm.name.value)\r\n");
      out.write("				{\r\n");
      out.write("					alert(\"이름을 입력 후 다시 시도해 주세요.\");\r\n");
      out.write("					return false;\r\n");
      out.write("				}\r\n");
      out.write("				if(!signupForm.stdid.value)\r\n");
      out.write("				{\r\n");
      out.write("					alert(\"학번을 입력 후 다시 시도해 주세요.\");\r\n");
      out.write("				}\r\n");
      out.write("				if(!signupForm.tel.value)\r\n");
      out.write("				{\r\n");
      out.write("					alert(\"전화번호를 입력 후 다시 시도해 주세요.\");\r\n");
      out.write("				}\r\n");
      out.write("				if(isNaN(signupForm.tel.value))\r\n");
      out.write("				{\r\n");
      out.write("					alert(\"전화번호는 - 를 제외한 숫자만 입력 후 다시 시도해 주세요.\");\r\n");
      out.write("					return false;\r\n");
      out.write("				}\r\n");
      out.write("			}\r\n");
      out.write("			function openIdChk()\r\n");
      out.write("			{\r\n");
      out.write("				window.open('idCheck.jsp', 'idCheckForm', 'width=500, height=700, scrollbars=yes, resizable=no')\r\n");
      out.write("			}\r\n");
      out.write("			function inputIdChk()\r\n");
      out.write("			{\r\n");
      out.write("				document.signup.idDuplication.value=\"idUncheck\";\r\n");
      out.write("			}\r\n");
      out.write("		</script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("    	<form name=\"signup\" action=\"signup_send.jsp\" method=\"post\">\r\n");
      out.write(" 	       <header>\r\n");
      out.write(" 	           <img src=\"img/Logo4.png\" class=\"Logoimg\" onclick =\"location.href='index.html'\">\r\n");
      out.write("	           <h1 onclick =\"location.href='Login.html'\">Login</h1>\r\n");
      out.write("   		   </header>\r\n");
      out.write("   		   <div id=\"Loginmain\">\r\n");
      out.write("   		   <div class=\"box\">\r\n");
      out.write("		   		<h1 class=\"logo\">LEEKANGJO</h1>\r\n");
      out.write("				<div>\r\n");
      out.write("					<h3>아이디</h3>\r\n");
      out.write("					<input type=\"text\" placeholder=\" *아이디\" id=\"id\" class=\"account\" maxlength=\"10\" onkeydown=\"inputIdChk()\" name=\"id\">\r\n");
      out.write("					<script type=\"text/javascript\">\r\n");
      out.write("						function idChk()\r\n");
      out.write("						{\r\n");
      out.write("							var idchk = document.getElementById('id');\r\n");
      out.write("							if (idchk.value == \"\")\r\n");
      out.write("							{\r\n");
      out.write("								alert(idchk.value + \"아이디를 입력해주세요.\");\r\n");
      out.write("							}\r\n");
      out.write("							else if (idchk.value != null)\r\n");
      out.write("							{\r\n");
      out.write("								alert(idchk.value);\r\n");
      out.write("							}\r\n");
      out.write("						}\r\n");
      out.write("					</script>\r\n");
      out.write("					<input type=\"button\" class=\"btn_id_check\" onclick=\"idChk()\" value=\"중복확인\">\r\n");
      out.write("				</div>\r\n");
      out.write("					<p>※아이디는 10자까지 작성가능.</p>\r\n");
      out.write("				<div>\r\n");
      out.write("					<h3>비밀번호</h3>\r\n");
      out.write("					<input type=\"password\" placeholder=\" *비밀번호\" id=\"pwd\" class=\"account\" maxlength=\"16\" name=\"pwd\">\r\n");
      out.write("					<p> 비밀번호는 16자까지 작성가능.</p>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div>\r\n");
      out.write("					<h3>비밀번호 확인</h3>\r\n");
      out.write("					<input type=\"password\" placeholder=\" *비밀번호 확인\" id=\"pwdcheck\" class=\"account\" maxlength=\"16\" name=\"pwdcheck\">\r\n");
      out.write("				</div>\r\n");
      out.write("				<div>\r\n");
      out.write("					<h3>이름</h3>\r\n");
      out.write("					<input type=\"text\" placeholder=\" *이름\" id=\"name\" class=\"account\" maxlength=\"5\" name=\"name\">\r\n");
      out.write("				</div>\r\n");
      out.write("				<div>\r\n");
      out.write("					<h3>학번</h3>\r\n");
      out.write("					<input type=\"text\" placeholder=\" *학번\" id=\"stdid\" class=\"account\" maxlength=\"8\" name=\"stdnum\">\r\n");
      out.write("					<button type=\"button\" class=\"btn_id_check\" id=\"btnSend\"><span class=\"\">학번 확인</span></button>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div>\r\n");
      out.write("					<h3>전화번호</h3>\r\n");
      out.write("					<input type=\"text\" placeholder=\" *전화번호 ( - 없이 기입하세요.)\" id=\"tel\" class=\"account\" maxlength=\"11\" name=\"tel\">\r\n");
      out.write("					<button type=\"button\" class=\"tel_check\" id=\"btnSend\"><span class=\"\">SMS 인증</span></button>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div>\r\n");
      out.write("					<h3>이메일 주소</h3>\r\n");
      out.write("					<input type=\"text\" placeholder=\"  이메일(선택)\" id=\"email\" class=\"account\" maxlength=\"30\" name=\"email\">\r\n");
      out.write("				</div>\r\n");
      out.write("				<div>\r\n");
      out.write("				<label><input type=\"checkbox\" name=\"agree\" value=\"\"> *개인정보 활용 및 회원가입 동의 (필수)</label>\r\n");
      out.write("				<button type=\"submit\" id=\"login\" class=\"account\">회원가입</button>\r\n");
      out.write("				<p id=\"alert\" class=\"account\"> </p> \r\n");
      out.write("				</div>\r\n");
      out.write("           </div>\r\n");
      out.write("           </div>\r\n");
      out.write("        </form>\r\n");
      out.write("    </body>\r\n");
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
