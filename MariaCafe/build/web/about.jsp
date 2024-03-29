<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="static/css/common.css" rel="stylesheet" type="text/css">
        <link href="static/css/style.css" rel="stylesheet" type="text/css">
        <title>About</title>
    </head>
    <body>
        <div class="main-wrapper">
            <!--header-->
            <%@include file="component/header.jsp"%>  
            <!--main body-->
            <div class="main-body">
                <!--left div-->
                <div class="left px-1">
                    <!--list article-->
                    <%--exception handle message--%>
                    <c:if test="${message!=null}">
                        <h2 class="product-title">${message}</h2>
                    </c:if>
                    <%--if no exception--%>
                    <c:if test="${message==null}">
                        <%-- all of article --%>
                        <c:forEach items="${listArticle}" var="article">
                            <div class="flex no-collapse mb-2">
                                <a class="a-reset" href="detail?id=${article.id}">
                                    <div class="product-title mb-1">${article.title}</div>
                                    <img class="right-float product-img mb-2 ml-1" src="${article.image}">
                                    <div>
                                        <span class="product-content">${article.preContent}</span>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                        <!--paging article list-->
                        <center class="pt-3">
                            <form action="about">
                                <!--if current page is 1, no previous icon-->
                                <c:if test="${currentPage>1}">
                                    <span class="next-pre-icon">
                                        <a class="a-reset" href="about?currentPage=${currentPage-1}"><</a>
                                    </span>
                                </c:if>
                                <input class="numberbox" type="number" autocomplete="off"
                                       name="currentPage" value="${currentPage}"
                                       min="1" max="${totalPage}" required>/${totalPage}
                                <!--if current page is last, no next icon-->
                                <c:if test="${currentPage<totalPage}">
                                    <span class="next-pre-icon">
                                        <a class="a-reset" href="about?currentPage=${currentPage+1}">></a>
                                    </span>
                                </c:if>
                            </form>
                        </center>
                    </c:if>
                </div>
                <%@include file="component/right-content.jsp"%>
            </div>
            <%@include file="component/footer.jsp"%>
        </div>
    </body>
</html>
