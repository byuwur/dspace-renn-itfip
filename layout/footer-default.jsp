<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Footer for home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>

<%
    String sidebar = (String) request.getAttribute("dspace.layout.sidebar");
%>

            <%-- Right-hand side bar if appropriate --%>
<%
    if (sidebar != null)
    {
%>
	</div>
	<div class="col-md-3">
                    <%= sidebar %>
    </div>
    </div>       
<%
    }
%>
</div>

</main>

            <%-- Page footer --%>
             <footer  style="background-color: #810059; box-shadow: 1px 0px 22px #810059;" class="navbar-fixed-bottom">
             <div id="designedby" class="container text-muted">
              <fmt:message key="jsp.layout.footer-default.theme-by"/> <a href="http://normalnaucalpan.edomex.gob.mx/"><img height="36"
                                    src="<%= request.getContextPath() %>/image/naucalpan.png"
                                    alt="Logo naucalpan" /></a>
			       <div id="footer_feedback" class="pull-right">                                    
                  <p class="text-muted">
                      <a target="blank" href="http://normalnaucalpan.edomex.gob.mx/">Naucalpan</a> 
                      Copyright&nbsp;&copy;&nbsp;2017&nbsp; 
                      <a target="_blank" href="<%= request.getContextPath() %>/feedback"><fmt:message key="jsp.layout.footer-default.feedback"/></a>
                      <a href="<%= request.getContextPath() %>/htmlmap"></a>
                  </p>
            </div>
			</div>
    </footer>
    </body>
</html>
