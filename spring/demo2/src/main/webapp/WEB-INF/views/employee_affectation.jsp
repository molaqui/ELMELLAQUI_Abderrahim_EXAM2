<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Affectation</title>
</head>
<body>
<h1>Employee Affectation</h1>
<form action="/employees/affect" method="post">
    <input type="hidden" name="employeeId" value="${employee.id}">
    <label for="projectId">Project:</label>
    <select name="projectId" id="projectId">
        <c:forEach var="project" items="${projects}">
            <option value="${project.id}">${project.name}</option>
        </c:forEach>
    </select>
    <label for="implication">Implication:</label>
    <input type="number" name="implication" id="implication" min="0" max="100">
    <button type="submit">Affect</button>
</form>
</body>
</html>
