<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
		<title>Insert title here</title>
	</head>
	<body>
		<%@include file="../header.jsp"%>
		<%@include file="audheader.jsp"%>
		<table width="960" align="center" >
			<tr>
				<td>
					<table border="1" align="center" bgcolor="#cccccc">
						<tr class="pt11" height="45">
							<td width="11%"><b>��Ŀ���</b></td>
							<td width="12%"><b>��Ŀ��Ŀ</b></td>
							<td width="11%"><b>��Ŀ����</b></td>
							<td width="11%"><b>��Ŀ����</b></td>
							<td width="11%"><b>��Ŀ����</b></td>
							<td width="11%"><b>�����˱��</b></td>
							<td width="11%"><b>��Ŀ״̬</b></td>
							<td><b>��ʦ���&nbsp;&nbsp;��ʦ��ɫ&nbsp;&nbsp;��ʦ����</b></td>
						</tr>
						<s:iterator value="projects" status="index">  
							<s:if test="#index.odd == true"> 
								<tr style="background-color:#dddddd" class="pt11" height="32">
							</s:if> 
							<s:else> 
								<tr class="pt11" height="32">
							</s:else> 
							<td><s:property value="prID"/></td>
							<td><s:property value="prName"/></td>
							<td>
							<s:if test="prLevel==1">У��</s:if>
							<s:elseif test="prLevel==2">ʡ��</s:elseif>
							<s:elseif test="prLevel==3">���Ҽ�</s:elseif>
							</td>
							<td><s:property value="prFunding"/></td>
							<td><s:property value="prScore"/></td>
							<td><s:property value="prApplicant"/></td>
							<td>
							<s:if test="prStatus==0">δ�ύ</s:if>
							<s:elseif test="prStatus==1">�����</s:elseif>
							<s:elseif test="prStatus==2">���ͨ��</s:elseif>
							<s:elseif test="prStatus==3">���δͨ��</s:elseif>
							</td>
							<td >
								<table align="center" bgcolor="#cccccc" align="center">
								<s:iterator value="roleScore" status="index">	
							 	<s:if test="#index.odd == true"> 
									 <tr style="background-color:#cccccc" class="pt11" height="32">
								</s:if> 
								<s:else> 
									 <tr class="pt11" height="32">
								</s:else>
								<td width="34%" align="center"><s:property value="teacher.TID"/></td>
								<td width="33%" align="center">
								<s:if test="TRole==0">������</s:if>
	                            <s:else>������</s:else>
								</td>
								<td width="33%" align="center"><s:property value="score"/></td>
								</s:iterator>
								</table>
							</td>
						</s:iterator>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>