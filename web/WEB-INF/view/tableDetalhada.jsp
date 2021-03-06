<%--
  Created by IntelliJ IDEA.
  User: adrianewey
  Date: 21/05/17
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table id="table2" class="uk-table uk-table-hover uk-table-divider">
    <thead>
    <tr>
        <th>Mês</th>
        <th>Valor Acrescentado</th>
        <th>Saldo</th>
        <th>Lucro Obtido</th>
        <th>Soma Total</th>
    </tr>
    </thead>
    <tbody>
    <c:if test="${mensal != 'true'}">
        <c:forEach items="${saldoMensal}" var="saldo" varStatus="mes">
            <c:if test="${mes.index == 0}">
                <tr>
                    <td>${mes.count}</td>
                    <td>${adicionado}</td>
                    <td>${saldoAtual.get(mes.index)}</td>
                    <td>${diferenca.get(mes.index)}</td>
                    <td>${saldo}</td>
                </tr>
            </c:if>
            <c:if test="${mes.index > 0}">
                <tr>
                    <td>${mes.count}</td>
                    <td>0.00</td>
                    <td>${saldoAtual.get(mes.index)}</td>
                    <td>${diferenca.get(mes.index)}</td>
                    <td>${saldo}</td>
                </tr>
            </c:if>

        </c:forEach>
    </c:if>
    <c:if test="${mensal == 'true'}">
        <c:forEach items="${saldoMensal}" var="saldo" varStatus="mes">
            <tr>
                <td>${mes.count}</td>
                <td>${adicionado}</td>
                <td>${saldoAtual.get(mes.index)}</td>
                <td>${diferenca.get(mes.index)}</td>
                <td>${saldo}</td>
            </tr>
        </c:forEach>
    </c:if>

    </tbody>
</table>
