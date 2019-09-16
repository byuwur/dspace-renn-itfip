<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Profile updated message
  -
  -   password.updated - a Boolean indicating whether the user updated their
  -                      password.
  --%>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
    prefix="fmt" %>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page import="org.dspace.eperson.EPerson" %>

<%
    boolean passwordUpdated =
        ((Boolean) request.getAttribute("password.updated")).booleanValue();
%>


<dspace:layout titlekey="jsp.register.profile-updated.title">
    <%-- <h1>Profile Updated</h1> --%>
    <div class="panel panel-primary">
    <div class="panel-heading">
	<center><h2><strong><fmt:message key="jsp.register.profile-updated.title"/></strong></h2>
  </div></center>
    <%-- <p>Thank you, your profile information
    <%= (passwordUpdated ? "and password have" : "has") %>
    been updated.</p> --%>   
    <div class="panel-body">
	<p class="alert alert-info">
<% if(passwordUpdated)
   { %>
    <fmt:message key="jsp.register.profile-updated.info1"/>
<% }
   else
   { %>
    <fmt:message key="jsp.register.profile-updated.info2"/>
<% } %>
    </p>

    <%-- <p><a href="<%= request.getContextPath() %>/">Return to DSpace Home</a></p> --%>

	<center><p><a href="<%= request.getContextPath() %>/"><fmt:message key="jsp.register.general.return-home"/></a></p></center>
  </div>
</dspace:layout>
