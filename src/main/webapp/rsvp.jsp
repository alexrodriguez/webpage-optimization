<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>
        Mike and Jenny's Wedding RSVP
    </title>
    <!-- Meta Tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- CSS -->
    <c:choose>
        <c:when test="${initParam.runningInProduction == 'true'}">
    <link rel="stylesheet" type="text/css" media="all" href="<c:url value="/css/rsvp-bundle.css"/>"/>
        </c:when>
        <c:otherwise>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/structure.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/form.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme.css" type="text/css"/>
        </c:otherwise>
    </c:choose>
</head>
<body id="public">
<img id="top" src="<c:url value="images/top.png"/>" alt=""/>
<div id="container">
    <h1 id="logo"><a>Wufoo</a></h1>
    <form id="form9" name="form9" class="wufoo " autocomplete="off" enctype="multipart/form-data"
          method="post" action="#public">
        <div class="info">
            <h2>Mike and Jenny's Wedding RSVP</h2>
            <div>You're invited to Mike and Jenny's Wedding Reception on June 6, 2008!</div>
        </div>
        <ul>
            <li id="foli125" class="leftHalf">
                <label class="desc" id="title125" for="Field125">
                    Name
                    <span id="req_125" class="req">*</span>
                </label>
                <span>
                    <input id="Field125" name="Field125" type="text" class="field text" value=""
                           size="8" tabindex="1"/>
                    <label for="Field125">First</label>
                </span>
                <span>
                    <input id="Field126" name="Field126" type="text" class="field text" value=""
                           size="14" tabindex="2"/>
                    <label for="Field126">Last</label>
                </span>
            </li>
            <li id="foli119" class="rightHalf">
                <label class="desc" id="title119" for="Field119">
                    Are you coming?
                    <span id="req_119" class="req">*</span>
                </label>
                <div>
                    <select id="Field119" name="Field119" class="field select medium" tabindex="3">
                        <option value="" selected="selected">
                        </option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                        <option value="Maybe">Maybe</option>
                    </select>
                </div>
            </li>
            <li id="foli129" class="leftHalf">
                <label class="desc" id="title129" for="Field129">
                    Your Meal Selection
                    <span id="req_129" class="req">*</span>
                </label>
                <div>
                    <select id="Field129" name="Field129" class="field select medium" tabindex="4">
                        <option value="Chicken" selected="selected">Chicken</option>
                        <option value="Steak">Steak</option>
                        <option value="Vegetarian">Vegetarian</option>
                    </select>
                </div>
            </li>
            <li id="foli110" class="rightHalf">
                <label class="desc" id="title110" for="Field110">
                    Are you bringing a guest?
                    <span id="req_110" class="req">*</span>
                </label>
                <div>
                    <select id="Field110" name="Field110" class="field select medium" tabindex="5">
                        <option value="" selected="selected">
                        </option>
                        <option value="Yes">
                            Yes
                        </option>
                        <option value="No">
                            No
                        </option>
                    </select>
                </div>
            </li>
            <li id="foli123" class="leftHalf">
                <label class="desc" id="title123" for="Field123">
                    Name
                </label>
                <span>
                    <input id="Field123" name="Field123" type="text" class="field text" value=""
                           size="8" tabindex="6"/>
                    <label for="Field123">First</label>
                </span>
                <span>
                    <input id="Field124" name="Field124" type="text" class="field text" value=""
                           size="14" tabindex="7"/>
                    <label for="Field124">Last</label>
                </span>
            </li>
            <li id="foli114" class="rightHalf">
                <label class="desc" id="title114" for="Field114">
                    Meal Selection
                </label>
                <div>
                    <select id="Field114" name="Field114" class="field select medium" tabindex="8">
                        <option value="Chicken" selected="selected">
                            Chicken
                        </option>
                        <option value="Steak">
                            Steak
                        </option>
                        <option value="Vegetarian">
                            Vegetarian
                        </option>
                    </select>
                </div>
            </li>
            <li class="buttons">
                <input id="saveForm" class="btTxt" type="submit" value="Submit"/>
            </li>
            <li style="display:none">
                <label for="comment">Do Not Fill This Out</label>
                <textarea name="comment" id="comment" rows="1" cols="1">
                </textarea>
            </li>
        </ul>
    </form>
</div>
<!--container-->
<img id="bottom" src="<c:url value="images/bottom.png"/>" alt=""/>
<!-- JavaScript -->
<c:choose>
    <c:when test="${initParam.runningInProduction == 'true'}">
<script type="text/javascript" src="<c:url value="/scripts/rsvp-bundle.js"/>"></script>
    </c:when>
    <c:otherwise>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/ccs.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/prototype.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/wufoo.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/wedding.js"></script>
    </c:otherwise>
</c:choose>
</body>
</html>