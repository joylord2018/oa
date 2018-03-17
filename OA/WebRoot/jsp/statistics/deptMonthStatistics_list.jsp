<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js">
</script>

<div class="action  divaction">
	<div class="t">月度统计列表</div>
	<div class="pages">
	         <form action="#" name="queryForm">
	     		<label for="time">年份</label>
	     		<select name="year" >
	     			<option>2000</option>
	     			<option>2001</option>
	     			<option>2002</option>
	     			<option>2003</option>
	     			<option>2004</option>
	     			<option>2005</option>
	     			<option>2006</option>
	     		</select>
	       		<label for="time">开始月份</label>
	       		<select name="startMonth">
	       			<option>1月份</option>
	       			<option>2月份</option>
	       			<option>3月份</option>
	       			<option>4月份</option>
	       			<option>5月份</option>
	       		</select>
	       		<label for="end-time">结束月份</label>
	       		<select name="endMonth">
	       			<option>1月份</option>
	       			<option>2月份</option>
	       			<option>3月份</option>
	       			<option>4月份</option>
	       			<option>5月份</option>
	       		</select>
		 	    <!-- <input type="hidden" name="year" value="2013"/> -->
		        <input type="submit" class="submit_01" value="查询"/>
	     </form>
	    
		<table width="90%" border="0" cellspacing="0" cellpadding="0" class="list items">
	      <tr class="even">
	        <td>编号</td>
	        <td>总计</td>
	        <td>年份</td>
	        <td>月份</td>
	        <td>部门</td>
	        <td>操作</td>
	      </tr>
	     
	      <tr>
	        <td>1</td>
	        <td>￥20000</td>
	        <td>2000年</td>
	        <td>1月</td>
	        <td>销售部</td>
	        <td>
	        <%-- <a href="claimVoucher_getClaimVoucherById.action?claimVoucher.id=<s:property value="#claimVoucher.id"/>">
	        	<img src="${ images}/search.gif" width="16" height="15" />
	        </a> --%>
	        <a href="deptMonthStatistics_detail.jsp">
	        <!-- <a href="claimVoucherStatistics_getDeptVoucherDetailByMonth.action?year=2013&selectMonth=7&departmentId=2"> -->
	        <img src="../../images/search.gif" width="16" height="15" />
	        </a>
	        </td>
	      </tr>
	     
	     <tr>
	        <td>2</td>
	        <td>￥30000</td>
	        <td>2000年</td>
	        <td>2月</td>
	        <td>销售部</td>
	        <td>
	        <%-- <a href="claimVoucher_getClaimVoucherById.action?claimVoucher.id=<s:property value="#claimVoucher.id"/>">
	        	<img src="${ images}/search.gif" width="16" height="15" />
	        </a> --%>
	        <a href="deptMonthStatistics_detail.jsp">
	        <!-- <a href="claimVoucherStatistics_getDeptVoucherDetailByMonth.action?year=2013&selectMonth=7&departmentId=2"> -->
	        <img src="../../images/search.gif" width="16" height="15" />
	        </a>
	        </td>
	      </tr>
	      
	      <tr>
	        <td>3</td>
	        <td>￥40000</td>
	        <td>2000年</td>
	        <td>3月</td>
	        <td>销售部</td>
	        <td>
	        <%-- <a href="claimVoucher_getClaimVoucherById.action?claimVoucher.id=<s:property value="#claimVoucher.id"/>">
	        	<img src="${ images}/search.gif" width="16" height="15" />
	        </a> --%>
	        <a href="deptMonthStatistics_detail.jsp">
	        <!-- <a href="claimVoucherStatistics_getDeptVoucherDetailByMonth.action?year=2013&selectMonth=7&departmentId=2"> -->
	        <img src="../../images/search.gif" width="16" height="15" />
	        </a>
	        </td>
	      </tr>
	     
	     
	     
	      <tr>
	        <td colspan="6" align="center">
		      	<c:import url="../claim/rollPage.jsp" charEncoding="UTF-8">
			
  			</c:import> 
  			</td>
	      </tr>
	    </table>        
       </div>
      </div>