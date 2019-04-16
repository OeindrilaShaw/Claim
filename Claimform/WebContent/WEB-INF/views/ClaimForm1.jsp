<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Banking Application</title>
	<style type="text/css">
		body {
			font-family: verdana;
			font-size: 12px;
			margin: 40px;
		}
		.customerTable, .customerTable td {
			border-collapse: collapse;
			border: 1px solid #aaa;
			margin: 2px;
			padding: 2px 2px 2px 10px;
			font-size: 12px;
		}
		.CustomerTable th {
			font-weight: bold;
			font-size: 12px;
			background-color: #5C82FF;
			color: white;
		}
		.CustomerLabel {
			font-family: verdana;
			font-size: 12px;
			font-weight: bold;
		}
		a, a:AFTER {
			color: blue;
		}
		
  .error {
      color: red;
      font-style: italic;
  }

	</style>
	<script type="text/javascript">
	function deleteCustomer(claimid){
		if(confirm('Do you want to delete this Customer ?')){
			var url = 'delete/'+claimid;
			window.location.href = url;
		}
	}
	</script>
</head>
<body>

<h2>Banking Application</h2>


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
			<form:input path="memberid" /><%-- <form:errors path="name"  cssClass="error"></form:errors> --%>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="claim_service_date" cssClass="customerLabel">
				<spring:message code="label.claim_service_date" />
			</form:label>
		</td>
		<td>
			<form:input path="claim_service_date" /><%-- <form:errors path="address"  cssClass="error"></form:errors> --%>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="claim_sub_date" cssClass="customerLabel">
				<spring:message code="label.claim_sub_date" />
			</form:label>
		</td>
		<td>
			<form:input path="claim_sub_date" /><%-- <form:errors path="age"  cssClass="error"></form:errors> --%>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="claim_amt" cssClass="customerLabel">
				<spring:message code="label.claim_amt" />
			</form:label>
		</td>
		<td>
			<form:input path="claim_amt" /><%-- <form:errors path="salary"  cssClass="error"></form:errors> --%>
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
<h3>List of Customer</h3>
<c:if test="${!empty claimList}">
	<table class="customerTable">
	<tr>
		<th width="180">Claimid</th>
		<th width="160">memberid</th>
		<th width="60">claimserdate</th>
		<th width="80">claimsubdate</th>
		<th width="60">amount</th>
		<th width="60">Action</th>
	</tr>
	<c:forEach items="${claimList}" var="claim">
		<tr>
		    <td>${claim.claimid}</td>
			<td><a href="<c:url value='/edit/${claim.claimid}' />" >${claim.memberid}</a></td>
			<td>${claim.claim_service_date}</td>
			<td>${claim.claim_sub_date}</td>
			<td>${claim.claim_amt}</td>
			<td><img src="<c:url value='/images/vcard_delete.png' />"
				title="Delete Customer"
				onclick="javascript:deleteCustomer(${claim.claimid})" />
				<a href="<c:url value='/edit/${claim.claimid}' />"  >
					<img src="<c:url value='/images/vcard_add.png' />" title="Edit Customer"/>
				</a>
			</td>
		</tr>
	</c:forEach>
	</table>
</c:if>


</body>
</html>
