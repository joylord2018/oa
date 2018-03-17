<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
%>
<%@ include file="../common/taglib.jsp"%>
<link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript">
	/* $(function(){
		$('#chart_img').attr('src','claimVoucherStatistics_createDetailChart.action?year=2013&month=7');
	}); */
	<%-- year = <%=request.getAttribute("year")%>;
	selectMonth = <%=request.getAttribute("selectMonth")%>;
	action = "claimVoucherStatistics_createDetailChart.action?year="+year+"&selectMonth="+selectMonth;
	document.getElementById("chart_img").setAttribute("src", action); --%>
</script>

<div class="action  divaction">
	<div class="t">月度统计详情</div>
	<div class="pages">
		<form action="#" name="queryForm">
	       		<label for="time">年份:</label>
	       		2000
	       		<label for="end-time">月份:</label>
	       		1
	       		
		        <input type="submit" class="submit_01" value="导出报表"/>
	     </form>
	     
	    
		<table width="90%" border="0" cellspacing="0" cellpadding="0" class="list items">
		  <tr class="even">
	        <td>编号</td>
	        <td>报销人</td>
	        <td>报销总额</td>
	        <td>年份</td>
	        <td>月份</td>
	        <td>部门</td>
	      </tr>
	     
	      <tr>
	        <td>1</td>
	        <td>张三</td>
	        <td>￥10000</td>
	        <td>2000年</td>
	        <td>1月</td>
	        <td>销售部</td>
	      </tr>
	     <tr>
	        <td>2</td>
	        <td>张三</td>
	        <td>￥10000</td>
	        <td>2000年</td>
	        <td>1月</td>
	        <td>销售部</td>
	      </tr>
	       <tr>
	        <td>3</td>
	        <td>张三</td>
	        <td>￥10000</td>
	        <td>2000年</td>
	        <td>1月</td>
	        <td>销售部</td>
	      </tr>
	      <tr>
	      	<td></td>
	      	<td bgcolor="yellow">总计</td>
	      	<td bgcolor="yellow">￥30000</td>
	      	<td></td>
	      	<td></td>
	      	<td></td>
	      </tr>		
		
	      
	    </table>        
       </div>
       <span style="display:none;"><iframe id="downloadIframe" src="" style="width:0px;height:0px;"></iframe></span>
	          <!--增加报销单 区域 结束-->
       </div>
       <div style="">
       	  <center><img src=""></center>
       </div>
       
      </div>