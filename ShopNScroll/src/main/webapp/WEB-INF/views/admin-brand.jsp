<!-- HEADER -->
<%@ include file="component-header.jsp" %>

<div class="body-area container">

<br/><br/>
<a href="supplier" ><button class="btn btn-warning">Suppliers</button></a>
<a href="category" ><button class="btn btn-warning">Category</button></a>
<a href="subcategory" ><button class="btn btn-warning">SubCategory</button></a>
<button class="btn btn-info">Brand</button>
<a href="product" ><button class="btn btn-warning">Products</button></a><br/>

<h1>Brand Management</h1>
<form:form action="addbrand" modelAttribute="brand">
<form:input path="brandId" hidden="true"/>
<form:input path="brandName" placeholder="Name"/>
<form:input path="brandDescription" placeholder="Description"/>
<form:button>${btnLabel}</form:button>
<c:if test="${btnLabel eq 'Update'}">
<form action="brand"><input type="submit" value="Back" /></form>
</c:if>
</form:form>
<br/>

<table class="table">
<tr>
<th>Unique Id</th>
<th>Name</th>
<th>Description</th>
<th>Operation</th>
</tr>
<c:forEach var="blist" items="${brandList}">
<tr>
<td>${blist.brandId}</td>
<td>${blist.brandName}</td>
<td>${blist.brandDescription}</td>
<td>
<a href="updatebrand-${blist.brandId}"><button>Update</button></a>
<a href="removebrand-${blist.brandId}"><button>Delete</button></a>
</td>
</tr>
</c:forEach>
</table>

</div>
<!-- FOOTER -->
<%@ include file="component-footer.jsp" %>