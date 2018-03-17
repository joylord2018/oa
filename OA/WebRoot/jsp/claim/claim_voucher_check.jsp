<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>北大青鸟办公自动化管理系统</title>
		<link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
			function checkClaimVoucher(checkResult){
		   		if(!confirm('确定'+checkResult+'报单吗')) return;
		   		document.checkResultForm.result.value = checkResult;
		   		document.checkResultForm.submit();
		   		
		   	}
		</script>
	</head>
<body>
    <div class="action  divaction">
    	<div class="t">审核报销单</div>
   		<div class="pages">
        	<!--增加报销单 区域 开始-->
                <table width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                  <caption>基本信息</caption>
                  <tr>
                  	<td >编&nbsp;&nbsp;号：1</td>
                    <td>填&nbsp;写&nbsp;人：张三</td>
                    <td>部&nbsp;&nbsp;门：销售部</td>
                    <td>职&nbsp;&nbsp;&nbsp;&nbsp;位：职工</td>
                  </tr>
                  <tr>
                    <td>总金额：10000</td>
                    <td>填报时间：2017-1-1</td>
                    <td>状态：待处理</td>
                    <td>待处理人：李四</td>
                  </tr>
                  <tr>
                  	<td colspan="4"><p>-------------------------------------------------------------------------------</p></td>
                  </tr>
                </table>
          <p>&nbsp;</p>
                <table width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                  <tr>
                    <td>项目类别</td>
                    <td>项目金额</td>
                    <td>费用说明</td>
                  </tr>
               <tr>
						<td>
							住宿费	
						</td>
						<td>
							5000	
						</td>
						<td>
							
							宾馆费用
						</td>
						
					</tr>
				
						<tr>
						<td>
							交通费	
						</td>
						<td>
							500	
						</td>
						<td>
							
							出租车
						</td>
						
					</tr>
      </table>
      <p>&nbsp;</p>
      <p>-------------------------------------------------------------------------------</p>
      
      <table width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
      	
         <tr>
           <td width="27%">李四(部门经理)</td>
           <td width="20%">&lt;2017-1-1</td>
           <td width="38%">审核：<span class="red"><strong>通过</strong></span></td>
         </tr>
         <tr>
           <td>审核意见：<strong>通过</strong></td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
         </tr>
         <tr>
         	<td colspan="3">
         		<p>-------------------------------------------------------------------------------</p>
           	</td>
         </tr>
         
    </table>
    <form action="#" name="checkResultForm">
    <table width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
		<tr>
			<td>
				审批意见：
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="checkResult.comment" id="textarea" cols="45"
					rows="5"></textarea>
			</td>
		</tr>
		 <!--表单提交行-->
		 <tr>
			<td colspan="3" class="submit">
				<input type="button" name="button" id="button" value="审批通过"
					class="submit_01" onclick="checkClaimVoucher('通过')" />
				
					<input type="button" name="button" id="button" value="审批拒绝"
						class="submit_01" onclick="checkClaimVoucher('拒绝')" />
					<input type="button" name="button" id="button" value="打回"
						class="submit_01" onclick="checkClaimVoucher('打回')" />
				
			</td>
		 </tr>
	</table>
	</form>
    <p>&nbsp;</p>
   
    <p>&nbsp;</p>
    <p><input type="button" value="返回" onclick="window.history.go(-1)" class="submit_01"/></p>       
<!--增加报销单 区域 结束-->
        </div>
    </div>
    
</body>
</html>
