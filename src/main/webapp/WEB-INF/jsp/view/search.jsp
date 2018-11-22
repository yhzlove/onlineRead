<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<nav class="nav-holder style-2">

    <!-- Logo bar -->
    <div class="logo-bar">
        <div class="container">
            <!-- Logo -->
            <div class="logo"><a href="<%=request.getContextPath()%>"><img src="<%=request.getContextPath()%>/static/view/images/logo_sc.png" alt=""></a></div>
            <!-- Logo -->

            <!-- Navigation -->
            <%--<div class="navigation">
            <ul>
                <li class="active">
                    <a href="#"><i class="fa fa-home"></i>主页</a>
                </li>
                <li class="dropdown-icon">
                    <a href="#"><i class="fa fa-book"></i>全部书</a>
                </li>
                <li class="dropdown-icon">
                    <a href="#"><i class="fa fa-files-o"></i>排行榜</a>
                </li>
                <li class="">
                    <a href="#"><i class="fa fa-file-text"></i>作者</a>
                </li>
                <li class="">
                    <a href="#"><i class="fa fa-pencil"></i>我的书架</a>
                </li>
            </ul>
        </div>--%>
            <!-- Navigation -->

            <!-- Search Nd Drop -->
            <div class="search-nd-drop">
                <ul>
                    <form action="<%=request.getContextPath()%>/searchBook" method="post">
                        <li>
                            <div class="language-select">
                                <select name="searchType">
                                    <option value="bookName">图书</option>
                                    <option value="author">作者</option>
                                </select>
                            </div>
                        </li>
                        <li>
                            <div class="search-bar style-2">
                                <input type="text" class="form-control" required="required" name="searchText" placeholder="请输入查询关键字">
                                <button class="sub-btn fa fa-search"  style="background-color: #11bb82"/>
                            </div>
                        </li>
                    </form>
                </ul>
            </div>
            <!-- Search Nd Drop -->

        </div>
    </div>
    <!-- Logo bar -->
</nav>

