<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >

<script type="text/javascript">
	function fn_egov_insert_addTest(){
	    document.test.action = "<c:url value='/cop/com/addTest.do'/>";
	    document.test.submit();
	}
	
	function fn_egov_delete_test(testId) {
        document.test.action = "<c:url value='/cop/com/deleteTest.do?testId=${testId}'/>";
        document.test.submit();  
    }
</script>
<title>게시판</title>

<style type="text/css">
    h1 {font-size:12px;}
    caption {visibility:hidden; font-size:0; height:0; margin:0; padding:0; line-height:0;}
    
    A:link    { color: #000000; text-decoration:none; }
    A:visited { color: #000000; text-decoration:none; }
    A:active  { color: #000000; text-decoration:none; }
    A:hover   { color: #fa2e2e; text-decoration:none; }
</style>


</head>
<body>
<noscript class="noScriptTitle">자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
<!-- 전체 레이어 시작 -->
<div id="wrap">
    <!-- header 시작 -->
    <div id="header_mainsize"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" /></div>
    <div id="topnavi"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncTopnav" /></div>        
    <!-- //header 끝 --> 
    <!-- container 시작 -->
    <div id="container">
        <!-- 좌측메뉴 시작 -->
        <div id="leftmenu"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncLeftmenu" /></div>
        <!-- //좌측메뉴 끝 -->
            <!-- 현재위치 네비게이션 시작 -->
            <div id="content">
                <div id="cur_loc">
                    <div id="cur_loc_align">
                        <ul>
                            <li>HOME</li>
                            <li>&gt;</li>
                            <li>사이트관리</li>
                            <li>&gt;</li>
                            <li><strong>게시판</strong></li>
                        </ul>
                    </div>
                </div>
                
                <!-- 검색 필드 박스 시작 -->
                <div id="search_field">
                    <div id="search_field_loc"><h2><strong>게시판</strong></h2></div>
					<form name="test" action ="<c:url value='/cop/com/selectTemplateInfs.do'/>" method="post">
                        <fieldset><legend>조건정보 영역</legend>    
                        <div class="sf_start">
                            <ul id="search_second_ul">
                                <li>
                                    <div class="buttons" style="position:absolute;left:870px;top:140px;">
                                        <a href="<c:url value='/cop/com/addTest.do'/>" onclick="javascript:fn_egov_insert_addTest(); return false;">등록</a>
                                    </div>                              	
                                </li>
                            </ul>           
                        </div>          
                        </fieldset>
                    </form>
                </div>
                <!-- //검색 필드 박스 끝 -->
                
                <!-- div id="page_info"><div id="page_info_align">총 <strong>321</strong>건 (<strong>1</strong> / 12 page)</div></div-->                    
                <!-- table add start -->
                <div class="default_tablestyle">
                    <table cellpadding="0" cellspacing="0">
	                    <caption>게시판</caption>
	                    <colgroup>
		                    <col width="10%">
		                    <col width="15%">
		                    <col width="10%">
		                    <col width="32%">
		                    <col width="10%">
		                    <col width="10%">
	                    </colgroup>
	                    <thead>
		                    <tr>
		                        <th scope="col" nowrap="nowrap">번호</th>
		                        <th scope="col" nowrap="nowrap">이름</th>
		                        <th scope="col" nowrap="nowrap">나이</th>
		                        <th scope="col" nowrap="nowrap">직업</th>
		                    </tr>
	                    </thead>
	                    <tbody>
		                    <c:forEach var="result" items="${testList}" varStatus="status">
		                    <!-- loop 시작 -->                                
		                    	<tr>
						            <td nowrap="nowrap"><c:out value="${result.testId}"/></td>
						            <td nowrap="nowrap">
						            	<a href="<c:url value='/cop/com/modifyTest.do?testId=${result.testId}'/>"><c:out value="${result.testName}"/></a>
						            </td>
						            <td nowrap="nowrap"><c:out value="${result.testAge}"/></td>
						            <td nowrap="nowrap"><c:out value="${result.testJob}"/></td>
					         	</tr>
					         </c:forEach>
	                    </tbody>
                    </table>
                </div>
            </div>
            <!-- //content 끝 -->    
        </div>  
        <!-- //container 끝 -->
    </div>
    <!-- //전체 레이어 끝 -->
 </body>
</html>