<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("gb2312");%>	
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	   <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	   <title>�����Ŀ����</title>
	   <script type="text/javascript">
		function save()
		{
			targetForm=document.forms[0];
			targetForm.action="savePro";
		}
		function cancel()
		{
			targetForm=document.forms[0];
			targetForm.action="cancelPro";
		}
		</script>
	</head>
	<body>
		<%@include file="../header.jsp"%>
		<%@include file="teaheader.jsp"%>	
		<br><br><br>
			<%
				String prName=(String)session.getAttribute("prName");
				List<String> prMember=(List<String>)session.getAttribute("prMember");
				double prScore=(double)session.getAttribute("prScore");
				double prFunding=(double)session.getAttribute("prFunding");
				int prLevel=(int)session.getAttribute("prLevel");
				String level="";
				if(prLevel==3)level="���Ҽ�";
				if(prLevel==2)level="ʡ��";
				if(prLevel==1)level="У��";
			%>
			<form action="applyPro.action" method="post">
			<table align="center">
				<tr>
					<td>��Ŀ��Ŀ</td>
					<td><input type="text" name="prName" value=<%=prName%> readonly /></td>
				</tr>
				<tr>
					<td>��Ŀ����</td>
					<td><input type="text" name="prLevel" value=<%=level%> readonly /></td>
				</tr>
				<tr>
					<td>��Ŀ����</td>
					<td><input type="text" name="prFunding" value=<%=prFunding%> readonly /></td>
				</tr>
				<tr>
					<td>��Ŀ����</td>
					<td><input type="text" name="prScore" value=<%=prScore %> readonly /></td>
				</tr>
				<tr>
					<td colspan="2">�������</td>
				</tr>
				<tr>
					<td colspan="2">
						<table align="center" border="1">
							<tr>
								<td>��ʦ����</td>
								<td>��ɫ</td>
								<td>����</td>
							</tr>	
							<%for(int i=0;i<prMember.size();i++){
								String role="������";
								if(i==0) role="������";
							%>
							<tr>
								<td><input type="text" value=<%=prMember.get(i)%> readonly name="name"/></td>
								<td><input type="text" value=<%=role%> readonly name="TRole"></td>
								<td><input type="text" name="score"></td>
							</tr>
						<%}%>
						</table>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="����" onclick="save()"><input type="submit" value="�ύ"></td>
					<td><input type="reset" value="����"><input type="submit" value="ȡ��" onclick="cancel()"></td>
				</tr>
			</table>
		</form>
	</body>
</html>
