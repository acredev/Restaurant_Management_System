/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-04-21 12:08:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp.signup.signup_005fver1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import leekangjo.signup;

public final class signup_005ftelchk_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("leekangjo.signup");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("	<meta charset=\"UTF-8\">\r\n");
      out.write("	<meta name=\"viewport\" content=\"width-device-width,initial-scale-1.0,user-scalable=no\">\r\n");
      out.write("	<title>전화번호 본인 인증</title>\r\n");
      out.write("	<link href=\"../../css/Header.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    <link href=\"../../css/signup_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<h2>전화번호 본인 인증</h2>\r\n");
      out.write("	<script type=\"text/javascript\">\r\n");
      out.write("		function showAlert()\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"인증번호가 전송되었습니다.\");\r\n");
      out.write("		}\r\n");
      out.write("	</script>\r\n");
      out.write("	<fieldset>\r\n");
      out.write("		<form action=\"signup_telchk.jsp\" method=\"post\" name=\"form_telchk\">\r\n");
      out.write("			인증번호 : <input type=\"text\" name=\"telchk\" maxlength=\"5\">\r\n");
      out.write("			<input type=\"button\" value=\"본인인증\" onclick=\"result();\">\r\n");
      out.write("		</form>\r\n");
      out.write("	</fieldset>\r\n");
      out.write("	");

		// 문자열의 인코딩 방식 설정
		request.setCharacterEncoding("UTF-8");
		// 파라미터를 통해 받아온 값을 변수에 저장
		String tel = request.getParameter("tel");
		
		// 클래스에 지정한 함수를 사용하기 위한 객체 선언
		signup signup_telchk = new signup();
		
		// 클래스에 지정한 함수를 실행시킨 결과값을 변수에 저장
		int chknum = signup_telchk.telchk(tel);
		
      out.write("\r\n");
      out.write("		<script type=\"text/javascript\">\r\n");
      out.write("			function result()\r\n");
      out.write("			{\r\n");
      out.write("				if (document.form_telchk.telchk.value == \"\" || document.form_telchk.length < 0)\r\n");
      out.write("				{\r\n");
      out.write("					alert(\"인증번호를 입력 후 다시 시도해 주세요.\");\r\n");
      out.write("					document.form_telchk.tel.focus();\r\n");
      out.write("				}\r\n");
      out.write("				else\r\n");
      out.write("				{\r\n");
      out.write("					if (");
      out.print(chknum);
      out.write(" == document.form_telchk.telchk.value)\r\n");
      out.write("					{\r\n");
      out.write("						alert(\"전화번호 본인인증이 완료되었습니다.\");\r\n");
      out.write("						opener.document.signup.tel.readOnly = true;\r\n");
      out.write("						opener.document.signup.tel.style.color = \"grey\";\r\n");
      out.write("						opener.document.signup.tel.style.onfocus=\"this.blur();\";\r\n");
      out.write("						window.close();\r\n");
      out.write("					}\r\n");
      out.write("					else\r\n");
      out.write("					{\r\n");
      out.write("						alert(\"전화번호 본인인증이 실패했습니다. 다시 시도해 주세요.\");\r\n");
      out.write("					}\r\n");
      out.write("				}\r\n");
      out.write("			}\r\n");
      out.write("		</script>\r\n");
      out.write("</body>\r\n");
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
