<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<script>
	$(function(){
			 //日期选择控件
		 	$("#startDate").click(function(){
				WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'endDate\')}',isShowClear:true, readOnly:true });
			});
			$("#endDate").click(function(){
				WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'startDate\')}',isShowClear:true, readOnly:true });
			});
		});
</script>
<div class="action  divaction">
	<div class="t">请假列表</div>
	<div class="pages">
		<div class="forms">
		<form action="#" name="queryForm">
	       <label for="time">开始时间</label>
	       <input type="text" name="startDate" id="startDate" class="nwinput"/>
	       <label for="end-time">结束时间</label>
	       <input type="text"  name="endDate" id="endDate" class="nwinput">
	       <input type="hidden" name="pageNo" value="1"/>
		   <input type="hidden" name="pageSize" value="5"/>
		   <input type="submit" class="submit_01" value="查询"/>
	     </form>
	     </div>
	<!--增加报销单 区域 开始-->
		<table width="90%" border="0" cellspacing="0" cellpadding="0" class="list items">
	      <tr class="even">
	        <td>编号</td>
	        <td>名称</td>
	        <td>发起时间</td>
	        <td>审批时间</td>
	        <td>审批意见</td>
	        <td>审批状态</td>
	        <td>操作</td>
	      </tr>
	      
	      <tr>
	        <td><a href="leave_view.jsp">1</a></td>
	        <td>张三请假1天</td>
	        <td>2017-1-1</td>
	        <td>2017-1-1</td>
	        <td>&nbsp;</td>
	        <td>待审批</td>
	        <td>
	       	 <a href="leave_view.jsp"><img src="../../images/search.gif" width="16" height="15" /></a>
	       	  <!-- 待审批 -->
	       	 		<a href="leave_check.jsp">
	       	 		<img src="../../images/sub.gif" width="16" height="16" /></a> 
	       	 
	        </td>
	      </tr>
	     
	      <tr>
	        <td><a href="leave_view.jsp">2</a></td>
	        <td>张三请假2天</td>
	        <td>2017-2-1</td>
	        <td>2017-2-3</td>
	        <td>通过</td>
	        <td>已审批</td>
	        <td>
	       	 <a href="leave_view.jsp"><img src="../../images/search.gif" width="16" height="15" /></a>
	       	  
	        </td>
	      </tr>
	       <tr>
	        <td><a href="leave_view.jsp">3</a></td>
	        <td>张三请假2天</td>
	        <td>2017-2-1</td>
	        <td>2017-2-3</td>
	        <td>不通过</td>
	        <td>已打回</td>
	        <td>
	       	 <a href="leave_view.jsp"><img src="../../images/search.gif" width="16" height="15" /></a>
	       	  
	        </td>
	      </tr>
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	      <tr>
	        <td colspan="7" align="center">
		      	<c:import url="../common/rollPage.jsp" charEncoding="UTF-8">
				
  			</c:import> 
  		  	</td>
  		  </tr>
	    </table>        
	          <!--请假 区域 结束-->
       </div>
      </div>