<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Displays a message indicating the user has logged out
  --%>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
    prefix="fmt" %>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<dspace:layout locbar="nolink" titlekey="jsp.login.logged-out.title">
    <%-- <h1>Logged Out</h1> --%>
     <center>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1>
        <strong>
        <fmt:message key="jsp.login.logged-out.title"/>
        </h1>
        </div>
        <div class="panel-body">
        
    <p><a href="<%= request.getContextPath() %>/"><fmt:message key="jsp.general.gohome"/></a></p>
    </strong>
        </div>
    </div>
     </center>

</dspace:layout>