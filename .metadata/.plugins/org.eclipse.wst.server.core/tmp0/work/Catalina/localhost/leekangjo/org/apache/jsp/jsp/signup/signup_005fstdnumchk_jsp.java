/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-05-26 02:16:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp.signup;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import leekangjo.SignUp;

public final class signup_005fstdnumchk_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("leekangjo.SignUp");
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
      out.write("학번 중복확인을 위한 페이지입니다.\r\n");
      out.write(" -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"UTF-8\">\r\n");
      out.write("		<meta name=\"viewport\" content=\"width-device-width,initial-scale-1.0,user-scalable=no\">\r\n");
      out.write("		<title>LEEKANGJO - 학번 중복확인</title>\r\n");
      out.write("		<link href=\"../../css/LoginMain.css\" rel=\"stylesheet\">\r\n");
      out.write("		<link href=\"../../css/Header.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"../../css/signup_style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link rel=\"icon\" href=\"../../img/favicon1.png\" type=\"image/x-icon\" sizes=\"16x16\">\r\n");
      out.write("        <script src=\"../../js/signup.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("		<form name=\"signup_idchk\">\r\n");
      out.write("			<input type=\"hidden\" id=\"stdnumchk_result\" name=\"stdnumchk_result\" value=\"stdnum_chkno\">\r\n");
      out.write("			<a id=\"result_txt\"></a>\r\n");
      out.write("			");

				// 받아올 문자열의 인코딩방식 설정
				request.setCharacterEncoding("UTF-8");
				// 파라미터를 통해 받아온 정보값을 변수에 저장
				String stdnum = request.getParameter("stdnum");
				
				// 받아온 학번값이 존재하지 않는다면...
				if (stdnum == null || stdnum.isEmpty())
				{
			
      out.write("\r\n");
      out.write("				<script type=\"text/javascript\">\r\n");
      out.write("					document.getElementById(\"stdnumchk_result\").value = \"stdnum_chkno\";\r\n");
      out.write("					document.getElementById(\"result_txt\").innerText = \"\"\r\n");
      out.write("				</script>\r\n");
      out.write("				<div class=\"outBox\">\r\n");
      out.write("					<div class=\"boxtitle\">\r\n");
      out.write("						<img src=\"../../img/Logo4_warning.png\" alt=\"\" class=\"loginImg\" onclick=\"location.href='../../index.jsp'\">\r\n");
      out.write("						<h2>잘못된 접근입니다.</h2>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			");

				}
				// 받아온 학번값이 존재한다면...
				else
				{
					// 클래스에 지정한 함수를 사용하기 위한 객체 선언
					SignUp signup_stdnumchk = new SignUp();
				
					// 클래스에서 지정한 함수를 실행시킨 값을 불러오기 위한 변수 선언
					int result = signup_stdnumchk.stdnumchk(stdnum);
					if (result == 1)
					{
			
      out.write("\r\n");
      out.write("					<script type=\"text/javascript\">\r\n");
      out.write("						document.getElementById(\"stdnumchk_result\").value = \"stdnum_chkyes\";\r\n");
      out.write("						document.getElementById(\"result_txt\").innerText = \"사용 가능한 학번입니다.\"\r\n");
      out.write("						document.getElementById(\"result_txt\").style = \"color:blue\";\r\n");
      out.write("					</script>\r\n");
      out.write("				");

				}
				else if (result == 0)
				{
      out.write("\r\n");
      out.write("					<script type=\"text/javascript\">\r\n");
      out.write("						document.getElementById(\"stdnumchk_result\").value = \"stdnum_chkno\";\r\n");
      out.write("						document.getElementById(\"result_txt\").innerText = \"사용이 불가능한 학번입니다.\";\r\n");
      out.write("						document.getElementById(\"result_txt\").style = \"color:red\";\r\n");
      out.write("					</script>\r\n");
      out.write("				");

				}
				// 이유를 알 수 없는 오류가 발생했다면...
				else
				{
      out.write("\r\n");
      out.write("					<div class=\"outBox\">\r\n");
      out.write("	    				<div class=\"boxtitle\">\r\n");
      out.write("        					<img src=\"../../img/Logo4_warning.png\" alt=\"\" class=\"loginImg\" onclick=\"location.href='../../index.jsp'\">\r\n");
      out.write("        					<h2>오류가 발생했습니다. (오류 메시지 : -1)</h2>\r\n");
      out.write("	    				</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				");

				}
			}
			
      out.write("\r\n");
      out.write("		</form>\r\n");
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
