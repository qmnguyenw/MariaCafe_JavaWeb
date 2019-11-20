<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="static/css/common.css" rel="stylesheet" type="text/css">
        <link href="static/css/style.css" rel="stylesheet" type="text/css">
        <title>Maria's Cafe</title>
    </head>
    <body>
        <div class="main-wrapper">
            <!--header-->
            <%@include file="component/header.jsp"%>  
            <!--main body-->
            <div class="main-body">
                <!--left div-->
                <div class="left px-1">
                    <%--exception handle message--%>
                    <c:if test="${message!=null}">
                        <h2 class="product-title">${message}</h2>
                    </c:if>
                    <%--if no exception--%>
                    <c:if test="${message==null}">
                        <div class="no-collapse">
                            <div class="mb-1 dot-b">
                                <a class="a-reset" href="detail?id=${articleIntroduction.id}">
                                    <img class="product-img-detail mx-05 mr-1" src="${articleIntroduction.image}">
                                    <div>
                                        <div class="product-title">${articleIntroduction.title}</div>
                                        <span class="product-content">${articleIntroduction.preContent}</span>
                                    </div>
                                    <div class="mb-1"></div>
                                </a>
                            </div>
                            <div class="mb-1 dot-b">
                                <table> 
                                    <tr>
                                        <th class="pr-05">
                                            <a class="a-reset" href="detail?id=${articleLeft.id}">
                                                <img class="product-img-detail" style="width: 100%" src="${articleLeft.image}">
                                            </a>
                                        </th>
                                        <th class="pl-05">
                                            <a class="a-reset" href="detail?id=${articleRight.id}">
                                                <img class="product-img-detail" style="width: 100%" src="${articleRight.image}">
                                            </a>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td class="pr-05 product-title">
                                            <a class="a-reset" href="detail?id=${articleLeft.id}">${articleLeft.title}</a>
                                        </td>
                                        <td class="pl-05 product-title">
                                            <a class="a-reset" href="detail?id=${articleRight.id}">${articleRight.title}</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="pr-05 product-content">${articleLeft.preContent}</td>
                                        <td class="pl-05 product-content">${articleRight.preContent}</td>
                                    </tr>
                                </table>
                                <div class="mb-1"></div>
                            </div>
                            <div class="mb-1 dot-b">
                                <div class="product-title pb-1">Visit my cafe</div>
                                <p class="product-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <p class="product-content">Gammel Torv, Copenhagen</p>
                                <p class="product-content">Phone: 123456</p>
                                <div class="mb-1"></div>
                            </div>
                            <div class="mx-2">
                                <p class="product-content">Kind regards</p>
                            </div>
                        </div>
                    </c:if>
                </div>
                <%@include file="component/right-content.jsp"%>
            </div>
            <%@include file="component/footer.jsp"%>
        </div>
    </body>
</html>
