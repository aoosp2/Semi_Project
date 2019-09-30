<%@ page import="model.dao.MemberDao"%>

<title>ID 중복 확인</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%
	String id = request.getParameter("USER_ID");
	MemberDao dao = new MemberDao();
	int check = dao.confirmId(id);

	if (check == 1) {
%>
<b><font color="red"><%=id%></font>는 이미 사용중인 아이디 입니다</b>
<form name="checkForm" method="post" action="confirmId.jsp">
	<b>다른 아이디를 선택하세요</b><br> <br> <input type="text" name="id">
	<input type="submit" value="ID중복확인">
</form>
<%
	} else {
%><center>
	<b>입력하신 <font color="red"><%=id%></font>는<br> 사용하실수 있는 ID입니다
	</b><br> <br> <input type="button" value="닫기" onclick="setid()">
</center>
<%
	}
%>

<script language="javascript">
	function setid() {
		opener.document.join.USER_ID.value="<%=id%>
	";
		self.close();
	}
</script>
