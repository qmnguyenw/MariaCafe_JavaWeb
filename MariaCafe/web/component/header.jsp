<%-- 
    Document   : header
    Created on : Jul 14, 2019, 4:52:47 PM
    Author     : Hi?p V?
--%>
<div>
    <div class="header">
        <div class="big-title font-serif">Maria Bagnarelli's Cafe</div>
        <div class="sub-title white font-serif">Welcome to my website</div>
    </div>
    <ul class="menu">
        <li class="sub-menu">
        <c:if test="${home != null}"><a class="menu-link font-bold" href="home">Home</a></c:if>
        <c:if test="${home == null}"><a class="menu-link" href="home">Home</a></c:if>
        </li>
        <li class="sub-menu">
        <c:if test="${about != null}"><a class="menu-link font-bold" href="about">About my Cakes</a></c:if>
        <c:if test="${about == null}"><a class="menu-link" href="about">About my Cakes</a></c:if>
        </li>
        <li class="sub-menu">
        <c:if test="${contact != null}"><a class="menu-link font-bold" href="contact">Find Maria's Cafe</a></c:if>
        <c:if test="${contact == null}"><a class="menu-link" href="contact">Find Maria's Cafe</a></c:if>
        </li>
    </ul>
</div>