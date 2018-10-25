<%--
  Created by IntelliJ IDEA.
  User: luutien18195
  Date: 10/25/18
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      .wrapper{
        width: 400px;
        margin: 0 auto;
      }
    </style>
  </head>
  <body>
      <div class="wrapper">
        <h1>Sanwich Condiments</h1>
        <form method="post">
          <table>
            <tr>
              <td><input type="checkbox" name="condiment" id="lettuce" value="lettuce"></td>
              <td><label for="lettuce">Lettuce</label></td>
            </tr>
            <tr>
              <td><input type="checkbox" name="condiment" id="tomato" value="tomato"></td>
              <td><label for="tomato">Tomato</label></td>
            </tr>
            <tr>
              <td><input type="checkbox" name="condiment" id="mustard" value="mustard"></td>
              <td><label for="mustard">Mustard</label><br></td>
            </tr>
            <tr>
              <td><input type="checkbox" name="condiment" id="sprouts" value="sprouts"></td>
              <td><label for="sprouts">Sprouts</label></td>
            </tr>
            <tr>
              <td colspan="2"><input type="submit" value="submit"></td>
            </tr>
          </table>

        </form>
        <b>Result: </b>
        <c:forEach items='${requestScope["condiments"]}' var="condiment">
           ${condiment}
        </c:forEach>
      </div>
  </body>
</html>
