<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="taglib.jsp"%>
<div class="nav" id="nav">
	<div class="t"></div>
   		<dl class="open">
	       	<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">报销单管理</dt>
	           <dd><a href="jsp/claim/claim_voucher_list.jsp">查看报销单</a></dd>
	          	<!-- 员工可见 -->
	           <dd><a href="jsp/claim/claim_voucher_edit.jsp">添加报销单</a></dd>
	           
	       </dl>
       <dl>
       		<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">请假管理</dt>
	           <dd><a href="jsp/leave/leave_list.jsp">查看请假</a></dd>
	         	<!-- 员工可见 -->
		       <dd><a href="jsp/leave/leave_edit.jsp">申请请假</a></dd>
		      
       </dl>
       <c:if test="${user.p_id >2}">
       <!-- 部门经理可见 -->
       <dl>
       		<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">统计报表</dt>
		       <dd><a href="jsp/statistics/deptMonthStatistics_list.jsp">报销单月度统计</a></dd>
		       <dd><a href="jsp/statistics/deptYearStatistics_list.jsp">报销单年度统计</a></dd>
       </dl>
     	</c:if>
       
       <c:if test="${user.p_id >3}">
       <!-- 总经理、财务可见 -->
       <dl>
       		<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">统计报表</dt>
		       <dd><a href="jsp/statistics/compMonthStatistics_list.jsp">报销单月度统计</a></dd>
		       <dd><a href="jsp/statistics/compYearStatistics_list.jsp">报销单年度统计</a></dd>
       </dl>
      </c:if>
       <dl>
       	<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">信息中心</dt>
           <dd>信心收件箱</dd>
           <dd>信心发件箱</dd>
       </dl>
</div>
