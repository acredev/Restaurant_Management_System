/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-05-25 11:42:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp.test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import leekangjo.captchaUtil;

public final class captcha_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("leekangjo.captchaUtil");
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
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"form-group\">\r\n");
      out.write("	<label for=\"captcha\" style=\"display:block;\">자동 로그인 방지</label>\r\n");
      out.write("		<div class=\"captcha\">\r\n");
      out.write("			<div class=\"form-group\">\r\n");
      out.write("				<img id=\"captchaImg\" title=\"캡차 이미지\" src=\"captchaImg.do\" alt=\"캡차 이미지\" />\r\n");
      out.write("				<div id=\"captchaAudio\" style=\"display:none;\"></div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group\">\r\n");
      out.write("				<a onclick=\"javascript:refreshBtn()\" class=\"refreshBtn\">\r\n");
      out.write("					<input type=\"button\" value=\"새로고침\" />\r\n");
      out.write("				</a>\r\n");
      out.write("				<a onclick=\"javascript:audio()\" class=\"refreshBtn\">\r\n");
      out.write("					<input type=\"button\" value=\"음성듣기\" />\r\n");
      out.write("				</a>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"form-group\">\r\n");
      out.write("				<input type=\"text\" name=\"answer\" id=\"answer\"  class=\"form-control\" />\r\n");
      out.write("			</div>   \r\n");
      out.write("		</div>\r\n");
      out.write("</div>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function audio(){\r\n");
      out.write("    var rand = Math.random();\r\n");
      out.write("    var url = 'captchaAudio.do';\r\n");
      out.write("    $.ajax({\r\n");
      out.write("        url: url,\r\n");
      out.write("        type: 'POST',\r\n");
      out.write("        dataType: 'text',\r\n");
      out.write("        data: 'rand=' + rand,\r\n");
      out.write("        async: false,\r\n");
      out.write("        success: function(resp) {\r\n");
      out.write("            var uAgent = navigator.userAgent;\r\n");
      out.write("            var soundUrl = 'captchaAudio.do?rand=' + rand;\r\n");
      out.write("            \r\n");
      out.write("            if(uAgent.indexOf('Trident') > -1 || uAgent.indexOf('MSIE') > -1) {\r\n");
      out.write("                winPlayer(soundUrl);\r\n");
      out.write("            } else if (!!document.createElement('audio').canPlayType) {\r\n");
      out.write("                try{\r\n");
      out.write("                    new Audio(soundUrl).play();\r\n");
      out.write("                } catch(e) {\r\n");
      out.write("                    winPlayer(soundUrl);\r\n");
      out.write("                }\r\n");
      out.write("            }else {\r\n");
      out.write("                window.open(soundUrl, '', 'width=1, height=1');\r\n");
      out.write("            }\r\n");
      out.write("        }    \r\n");
      out.write("        \r\n");
      out.write("    });\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function refreshBtn(type){\r\n");
      out.write("    var rand = Math.random();\r\n");
      out.write("    var url = \"captchaImg.do?rand=\" + rand;\r\n");
      out.write("    $('#captchaImg').attr(\"src\", url);\r\n");
      out.write("}\r\n");
      out.write("function winPlayer(objUrl){\r\n");
      out.write("    $('#captchaAudio').html('<vgsound src=\"' + objUrl + '\">');\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@RequestMapping(value = \"captchaImg.do\")\r\n");
      out.write("public void cpatchaImg(HttpServletRequest request, HttpServletResponse response) throws Exception{\r\n");
      out.write("    new captchaUtil().captchaImg(request, response);\r\n");
      out.write("}\r\n");
      out.write("@RequestMapping(value = \"captchaAudio.do\")\r\n");
      out.write("public void cpatchaAudio(HttpServletRequest request, HttpServletResponse response) throws Exception{\r\n");
      out.write("    new captchaUtil().captchaAudio(request, response);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
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