<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="templateInf" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javascript">
    function fn_egov_regist_test(){
    	document.test.action = "<c:url value='/cop/com/insertTest.do'/>";
        document.test.submit();
    }
</script>
<title>게시글 등록</title>

<style type="text/css">
    h1 {font-size:12px;}
    caption {visibility:hidden; font-size:0; height:0; margin:0; padding:0; line-height:0;}
</style>
</head>

<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>    
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
                            <li><strong>게시판관리</strong></li>
                        </ul>
                    </div>
                </div>
                <!-- 검색 필드 박스 시작 -->
                <div id="search_field">
                    <div id="search_field_loc"><h2><strong>게시글 등록</strong></h2></div>
                </div>
				<form:form commandName="test" name="test" method="post" >
    				<div class="modify_user" >
                        <table >
					      <tr> 
					        <th width="20%" height="23" class="required_text" nowrap="nowrap">
					            <label for="testId">
									번호
					            </label>    
					            <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required"/>
					        </th>
					        <td width="80%" nowrap="nowrap">
					          <input name="testId" type="text" size="60" value="" maxlength="60" style="width:100%" id="testId"  title="번호">
					          <br/><form:errors path="testId" /> 
					        </td>
					      </tr>
					      
					      <tr> 
					        <th width="20%" height="23" class="required_text" nowrap="nowrap">
					            <label for="testId">
									이름
					            </label>    
					            <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required"/>
					        </th>
					        <td width="80%" nowrap="nowrap">
					          <input name="testName" type="text" size="60" value="" maxlength="60" style="width:100%" id="testName"  title="이름">
					          <br/><form:errors path="testName" /> 
					        </td>
					      </tr> 
					      <tr> 
					        <th width="20%" height="23" class="required_text" nowrap="nowrap">
					            <label for="testAge">
									나이
					            </label>    
					            <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required"/>
					        </th>
					        <td width="80%" nowrap="nowrap">
					          <input name="testAge" type="text" size="60" value="" maxlength="60" style="width:100%" id="testAge"  title="나이">
					          <br/><form:errors path="testAge" /> 
					        </td>
					      </tr>
					      <tr> 
					        <th width="20%" height="23" class="required_text" nowrap="nowrap">
					            <label for="testJob">
									직업
					            </label>    
					            <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required"/>
					        </th>
					        <td width="80%" nowrap="nowrap">
					          <input name="testJob" type="text" size="60" value="" maxlength="60" style="width:100%" id="testJob"  title="직업">
					          <br/><form:errors path="testJob" /> 
					        </td>
					      </tr>  
                        </table>
                    </div>


                    <!-- 버튼 시작(상세지정 style로 div에 지정) -->
                    <div class="buttons" style="padding-top:10px;padding-bottom:10px;">
                      <!-- 목록/저장버튼  -->
                      <table border="0" cellspacing="0" cellpadding="0" align="center">
                        <tr> 
                          <td>
                              <a href="<c:url value='/cop/com/insertTest.do'/>" onclick="fn_egov_regist_test(); return false;">저장</a> 
                          </td>
                          <td width="10"></td>
                          <td>
                              <a href="<c:url value='/testList.do'/>" title="목록" >목록</a>
                          </td>
                          <td width="10"></td> 
                        </tr>
                      </table>
                    </div>
                    <!-- 버튼 끝 -->                           
                </form:form>

            </div>  
            <!-- //content 끝 -->    
    </div>  
    <!-- //container 끝 -->
    <!-- footer 시작 -->
    <div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
    <!-- //footer 끝 -->
</div>
<!-- //전체 레이어 끝 -->
</body>
</html>

