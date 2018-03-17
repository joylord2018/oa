<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>北大青鸟办公自动化管理系统</title>
		<link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" />
	</head>
<body>
<form id="myForm" name="myForm" method="post" >
    <div class="action  divaction">
    	<div class="t">查看报销单</div>
   		<div class="pages">
        	<!--增加报销单 区域 开始-->
                <table width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                  <caption>基本信息</caption>
                  <tr>
                  	<td >编&nbsp;&nbsp;号：001</td>
                    <td>填&nbsp;写&nbsp;人：张三</td>
                    <td>部&nbsp;&nbsp;门：销售部</td>
                    <td>职&nbsp;&nbsp;&nbsp;&nbsp;位：员工</td>
                  </tr>
                  <tr>
                    <td>总金额：10000</td>
                    <td>填报时间：2017-1-1</td>
                    <td>状态：新创建</td>
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
					<td>住宿</td>
					<td>￥5000</td>
					<td>宾馆住宿费</td>
				</tr>
				<tr>
					<td>交通</td>
					<td>￥500</td>
					<td>出租车</td>
				</tr>
				
      </table>
      <p>&nbsp;</p>
      <p>-------------------------------------------------------------------------------</p>
      
      <table width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
      
         <tr>
           <td width="27%">李四(部门经理)</td>
           <td width="20%">2017-1-1</td>
           <td width="38%">审核：<span class="red"><strong>通过</strong></span></td>
         </tr>
         <tr>
           <td>审核意见：<strong>通过</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
         </tr>
         <tr>
         	<td colspan="3">
         		<p>-------------------------------------------------------------------------------</p>
           	</td>
         </tr>
        
        
         <tr>
           <td width="27%">赵六(总经理)</td>
           <td width="20%">2017-1-1</td>
           <td width="38%">审核：<span class="red"><strong>通过</strong></span></td>
         </tr>
         <tr>
           <td>审核意见：<strong>通过</td>
           <td>&nbsp;</td>
           <td>&nbsp;</td>
         </tr>
         <tr>
         	<td colspan="3">
         		<p>-------------------------------------------------------------------------------</p>
           	</td>
         </tr>
         
    </table>
    <p>&nbsp;</p>
   
    <p>&nbsp;</p>
    <p><input type="button" value="返回" onclick="window.history.go(-1)" class="submit_01"/></p>       
<!--增加报销单 区域 结束-->
        </div>
    </div>
</form>
</body>