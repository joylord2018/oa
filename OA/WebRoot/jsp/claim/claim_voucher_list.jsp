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
   	function delVoucher(id){
   		if(!confirm('确定删除报单吗')) return;
   		
   		document.claimVoucherForm.action = "claimVoucher_deleteClaimVoucherById.action?claimVoucher.id="+id;
   		document.claimVoucherForm.submit();
   		
   	}
   	
</script>
<div class="action  divaction">
	<div class="t">报销单列表</div>
	<div class="pages">
		<div class="forms">
			 <form action="#" name="queryForm">
	       		<label>报销单状态</label>
	  			<select name="claimVoucher.status" >
	  				<option>全部</option>
	  				<option>新创建</option>
	  				<option>已提交</option>
	  				<option>已打回</option>
	  				<option>已审批</option>
	  				<option>已付款</option>
	  				<option>已终止</option>
	  			</select>
		       <label for="time">开始时间</label>
		       <input type="text" name="startDate" id="startDate" class="nwinput">
		       <label for="end-time">结束时间</label>
		       <input type="text" name="endDate" id="endDate" class="nwinput"/>
		
		       <input type="submit" class="submit_01" value="查询"/>
	       </form>
	     </div>
	<!--增加报销单 区域 开始-->
	
		<table width="90%" border="0" cellspacing="0" cellpadding="0" class="list items">
	      <tr class="even">
	        <td>编号</td>
	        <td>填报日期</td>
	        <td>填报人</td>
	        <td>总金额</td>
	        <td>状态</td>
	        <td>待处理人</td>
	        <td>操作</td>
	      </tr>
	    
	      <tr>
	        <td><a href="claim_voucher_view.jsp">0001</a></td>
	        <td>2017-1-1
	        <td>张三</td>
	        <td>1000</td>
	        <td>新创建</td>
	        <td>王五</td>
	        <td>
	        <!-- 新创建，已打回显示 -->
	        		<a href="claim_voucher_update.jsp">
			        	<img src="../../images//edit.gif" width="16" height="16" /> 
			        </a>
			        <a  href="#">
			        	<img src="../../images//delete.gif" width="16" height="16" />
			        </a>
		       
		      
		        <a href="claim_voucher_view.jsp">
		        	<img src="../../images//search.gif" width="16" height="15" />
		        </a>
		       
	        </td>
	      </tr>
	   
	    <tr>
	        <td><a href="claim_voucher_view.jsp">0002</a></td>
	        <td>2017-1-1
	        <td>张三</td>
	        <td>1000</td>
	        <td>已打回</td>
	        <td>王五</td>
	        <td>
	        		<a href="claim_voucher_update.jsp">
			        	<img src="../../images//edit.gif" width="16" height="16" /> 
			        </a>
			        <a  href="#">
			        	<img src="../../images//delete.gif" width="16" height="16" />
			        </a>
		       
		   
		        <a href="claim_voucher_view.jsp">
		        	<img src="../../images//search.gif" width="16" height="15" />
		        </a>
		        
	        </td>
	      </tr>
	   <tr>
	        <td><a href="claim_voucher_view.jsp">0003</a></td>
	        <td>2017-1-1
	        <td>张三</td>
	        <td>3000</td>
	        <td>已审批</td>
	        <td>王五</td>
	        <td>
	        	
		       
		        <a href="claim_voucher_view.jsp">
		        	<img src="../../images//search.gif" width="16" height="15" />
		        </a>
	
		        	<!-- 已提交，待审批，已审批显示 -->
		        	
				        <a href="claim_voucher_check.jsp">
				         <img src="../../images//sub.gif" width="16" height="16" />
				        </a>
			   
	        </td>
	      </tr>
	   
	      <tr>
	        <td colspan="6" align="center">
		      	<c:import url="rollPage.jsp" charEncoding="UTF-8">
				
  				</c:import> 
  		  	</td>
  		  </tr>
	    </table>      
	  
	          <!--增加报销单 区域 结束-->
       </div>
      </div>