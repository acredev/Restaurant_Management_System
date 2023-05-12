/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-05-12 02:30:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      out.write("        <header>\r\n");
      out.write("            <img src=\"img/MainLogo.png\" class=\"Logoimg\" onclick =\"location.href='index.jsp'\">\r\n");
      out.write("            ");

            	// 만약, 로그인 상태가 true라면
            	if (login)
            	{
      out.write("\r\n");
      out.write("            		<h1 onclick =\"location.href='jsp/login/login_first.jsp'\">로그아웃 (로그인아이디 : ");
      out.print(memberId );
      out.write(")</h1>\r\n");
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
      out.write("            <div id=\"columns\">\r\n");
      out.write("                <div class=\"card\" onclick =\"location.href='store1_detail.html'\">\r\n");
      out.write("                    <img src=\"img/aunt_2.png\">\r\n");
      out.write("                    <p>이모네</p>\r\n");
      out.write("                    <a>예약 가능 | 포장 가능 | 소요시간 10~15분</a>\r\n");
      out.write("                    <span>대기상황 : 2</span>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card\" onclick=\"alert('영업 준비중입니다.')\">\r\n");
      out.write("                    <img src=\"img/jingok.png\">\r\n");
      out.write("                    <p>진국</p>\r\n");
      out.write("                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>\r\n");
      out.write("                    <span> -브레이크 타임-</span>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <img src=\"img/japan.png\">\r\n");
      out.write("                    <p>카로꼬</p>\r\n");
      out.write("                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <img src=\"img/bobsway.png\">\r\n");
      out.write("                    <p>밥스웨이</p>\r\n");
      out.write("                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <img src=\"img/china.png\">\r\n");
      out.write("                    <p>면박사</p>\r\n");
      out.write("                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <img src=\"img/bonggousse.png\">\r\n");
      out.write("                    <p>봉구스밥버거 경민대점</p>\r\n");
      out.write("                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <img src=\"img/moms_touch.png\">\r\n");
      out.write("                    <p>맘스터치 의정부경민점</p>\r\n");
      out.write("                    <a>예약 가능 | 포장 가능 | 소요시간 10~20분</a>     \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <img src=\"img/tomato.png\">\r\n");
      out.write("                    <p>토마토도시락 경민대점</p>\r\n");
      out.write("                    <a>예약 가능 | 포장 가능 | 소요시간 5~10분</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <img src=\"img/bd.png\">\r\n");
      out.write("                    <p>뽕뜨락피자 경민대점</p>\r\n");
      out.write("                    <a>예약 가능 | 포장 가능 | 소요시간 10~20분</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
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
