<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sping:url value="/res/static/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link
href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
rel="stylesheet" id="bootstrap-css">
<script
src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

<spring:url value="/res/static/css" var="cssPath"></spring:url>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="Claimform/styles/ClaimForm.css">
<link rel="stylesheet" href="Claimform/styles/bootstrap.min.css">
<link
href="${pageContext.request.contextPath}/res/static/css/ClaimForm.css"
rel="stylesheet">
<link
href="${pageContext.request.contextPath}/res/static/css/bootstrap.min.css"
rel="stylesheet">
</head>
<body>​
<div class="topnav" id="myTopnav">
		<a href=" ">Welcome, Member</a>

		<ul class="nav navbar-nav">
            <li><a class="btn1 navbar-btn btn-info" href="/Claims/ClaimButtons.jsp" name="goback" id="goback"  value="Go Back">Go Back</a>
            <a class="btn1 navbar-btn btn-danger" href="/Claims/Welcome.jsp" name="logout" id="logout"  value="Log Out">Log Out</a></li>
        </ul>     

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>


	<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
</div>
<div class="container">
<br>  
<hr>

<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Claims Information</h4>
	<p class="text-center">Insert details to raise your claim</p>
	
	<p class="divider-text">
        
    </p>
	<c:url var="action" value="/claim/add.html" ></c:url>
<form:form method="post" action="${action}" commandName="claim" cssClass="customerForm">
	<table>
	<c:if test="${!empty claim}">
	<tr>
		<td>
			<form:label path="claimid" cssClass="customerLabel">
				<spring:message code="label.claimid" />
			</form:label>
		</td>
		<td>
			<form:input path="claimid" readonly="true" size="8"  disabled="true" />
			<form:hidden path="claimid" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="memberid" cssClass="customerLabel">
				<spring:message code="label.memberid" />
			</form:label>
		</td>
		<td>
			<form:input path="memberid" placeholder="memberid" /><%-- <form:errors path="name"  cssClass="error"></form:errors> --%>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="claim_service_date" cssClass="customerLabel">
				<spring:message code="label.claim_service_date" />
			</form:label>
		</td>
		<td>
			<form:input path="claim_service_date" placeholder="date"/><%-- <form:errors path="address"  cssClass="error"></form:errors> --%>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="claim_sub_date" cssClass="customerLabel">
				<spring:message code="label.claim_sub_date" />
			</form:label>
		</td>
		<td>
			<form:input path="claim_sub_date" placeholder="date"/><%-- <form:errors path="age"  cssClass="error"></form:errors> --%>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="claim_amt" cssClass="customerLabel">
				<spring:message code="label.claim_amt"/>
			</form:label>
		</td>
		<td>
			<form:input path="claim_amt" placeholder="amount" /><%-- <form:errors path="salary"  cssClass="error"></form:errors> --%>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty claim.memberid}">
				<input type="submit"
					value="<spring:message code="label.editcustomer"/>" />
			</c:if>
			<c:if test="${empty claim.memberid}">
				<input type="submit"
					value="<spring:message code="label.addcustomer"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->

<br><br>

</body>
</html>