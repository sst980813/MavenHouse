<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Insert title here</title>
<!-- Css -->
<link rel="stylesheet" href="css/bundle.css" type="text/css">
<link rel="stylesheet" href="css/dataTables.min.css" type="text/css">
<link rel="stylesheet" href="css/prism.css" type="text/css">
<link rel="stylesheet" href="css/app.min.css" type="text/css">
</head>
<body>
 <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4" style="width: 100%; height:100%;">
  <table id="example1" class="table table-striped table-bordered dataTable dtr-inline" role="grid" aria-describedby="example1_info"  style="width: 100%;height:100%">
  <thead>
  <tr role="row">
  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" style="height:3px;">ID</th>
  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >标题</th>
  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >地点</th>
    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >房型</th>
  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >上榜时间</th>
  <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"  >精选</th>
   
    </tr>
  </thead>
  <tbody>
              <c:forEach items="${cs}" var="c" varStatus="st">
            <tr>  
                <td >${c.id}</td>
                <td >${c.title}</td>
                <td>${c.location}</td>
                <td>${c.housetype}</td>
                <td>${c.createday}</td>  
                <td>${c.ifgood}</td>               
            </tr>
        </c:forEach>
   </tbody>
                            </table></div></div>
                            
</table>
</body>
<!-- Javascript -->
<script src="js/bundle.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<!-- Bootstrap 4 and responsive compatibility -->
<script src="js/dataTables.bootstrap4.min.js"></script>
<script src="js/datatable.js"></script>
<script src="js/prism.js"></script>
<script src="js/app.min.js"></script>

</html>