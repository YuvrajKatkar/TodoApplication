<%@page import="todo.Task"%>
<%@page import="todo.TaskHolder"%>
<%@page import="java.util.ArrayList"%>

	<%!
	static TaskHolder holder;
	%>


<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}
/* .div{
	margin: 10px;
} */
</style>
</head>
<body>
	<div class="container">
		<h2>To do application!</h2>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Sr no</th>
					<th scope="col">Task</th>
					<th scope="col">Completed</th>
				</tr>
			</thead>
			<tbody>
				<%
				if(holder==null){
					holder = new TaskHolder();
				}
				ArrayList<Task> list = holder.getList();
				for (Task task : list) {
				%>
				<tr>
					<td ><%=list.indexOf(task)+1%></td>
					<td><%=task.getMessage() %></td>
					<td><a href="delete?index=<%= list.indexOf(task)%>">Delete this</a></td>
				</tr>
				<%
				}
				%>

				
			</tbody>
		</table>
		<form class="row g-3" action="addTask" method="post">
			<label for="exampleDataList" class="form-label">Enter your
				task</label> <input class="form-control" name="message"
				placeholder="Type to enter...">
			<div class="col-auto">
				<button type="submit" class="btn btn-primary mb-3">Add task</button>
			</div>
		</form>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous">
		
	</script>
</body>
</html>
</body>
</html>
