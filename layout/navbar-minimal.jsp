<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Default navigation bar
--%>

<%@page import="org.apache.commons.lang.StringUtils"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="/WEB-INF/dspace-tags.tld" prefix="dspace" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.LocaleSupport" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="org.dspace.content.Collection" %>
<%@ page import="org.dspace.content.Community" %>
<%@ page import="org.dspace.eperson.EPerson" %>
<%@ page import="org.dspace.core.ConfigurationManager" %>
<%@ page import="org.dspace.browse.BrowseIndex" %>
<%@ page import="org.dspace.browse.BrowseInfo" %>
<%@ page import="java.util.Map" %>
<%
    // Is anyone logged in?
    EPerson user = (EPerson) request.getAttribute("dspace.current.user");

    // Is the logged in user an admin
    Boolean admin = (Boolean)request.getAttribute("is.admin");
    boolean isAdmin = (admin == null ? false : admin.booleanValue());

    // Get the current page, minus query string
    String currentPage = UIUtil.getOriginalURL(request);
    int c = currentPage.indexOf( '?' );
    if( c > -1 )
    {
        currentPage = currentPage.substring( 0, c );
    }

    // E-mail may have to be truncated
    String navbarEmail = null;

    if (user != null)
    {
        navbarEmail = user.getEmail();
    }
%>


       <div class="navbar-default" >
         <a onmouseover="this.style.backgroundColor='#a47b29'" onmouseout="this.style.backgroundColor='#cd9933'" style="text-shadow: 0px 0px 5px #000000;color: #ffffff;"  class="navbar-brand" href="<%= request.getContextPath() %>/"><img height="28" src="<%= request.getContextPath() %>/image/naucalpan.png" alt="logo naucalpan" /></a>
       </div>
       <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
       <div class="nav navbar-nav navbar-right">
		<ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
         <%
    if (user != null)
    {
		%>
		<a onmouseover="this.style.backgroundColor='#a47b29'" onmouseout="this.style.backgroundColor='#cd9933'" style="text-shadow: 0px 0px 5px #000000;color: #ffffff;" 
    href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> <fmt:message key="jsp.layout.navbar-default.loggedin">
		      <fmt:param><strong><%= StringUtils.abbreviate(navbarEmail, 30) %></strong></fmt:param>
		  </fmt:message> <b style="border-top-color: #ffffff; border-bottom-color: #ffffff;" class="caret"></b></a>
		<%
    } else {
		%>
             <a onmouseover="this.style.backgroundColor='#a47b29'" onmouseout="this.style.backgroundColor='#cd9933'" style="text-shadow: 0px 0px 5px #000000;color: #ffffff;" 
             href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> <fmt:message key="jsp.layout.navbar-default.sign"/> <b class="caret"></b></a>
	<% } %>             
             <ul class="dropdown-menu">
               <li><a href="<%= request.getContextPath() %>/mydspace"><fmt:message key="jsp.layout.navbar-default.users"/></a></li>
               <li><a href="<%= request.getContextPath() %>/profile"><fmt:message key="jsp.layout.navbar-default.edit"/></a></li>

		<%
		  if (isAdmin)
		  {
		%>
			   <li class="divider"></li>  
               <li><a href="<%= request.getContextPath() %>/dspace-admin"><fmt:message key="jsp.administer"/></a></li>
		<%
		  }
		  if (user != null) {
		%>
		<li><a href="<%= request.getContextPath() %>/logout"><span class="glyphicon glyphicon-log-out"></span> <fmt:message key="jsp.layout.navbar-default.logout"/></a></li>
		<% } %>
             </ul>
           </li>
          </ul>
          
	</div>
    </nav>
