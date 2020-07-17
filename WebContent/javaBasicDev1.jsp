<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題1（発展)</title>
</head>
<body>
	<h1>Java基礎 - 演習問題1（発展)</h1>

	<p>
	    <span>ケーキの金額：\500</span>
	    <br>
	    <span>コーヒーの金額：\350</span>
	    <br>
	    <span>所持金：\3200</span>
  	</p>
  	<%!
		public String result(int value) {
		  	return "\\" + value;
	  	}
  	%>

	<%
		int money = 3200, cake = 500, coffee = 350;
		out.println("ケーキを3つとコーヒーを2つ、購入する場合の金額は" + result(3*cake + 2*coffee) + "です");
		out.println("<br>");
		out.println("ケーキを2つとコーヒーを3つ買った場合、所持金が" + result(money - 2*cake - 3*coffee) + "残ります");
		out.println("<br>");
		out.println("所持金でケーキとコーヒーを" + (money / (cake + coffee)) + "セット購入できます");
		out.println("<br>");
		out.println("所持金でケーキを買えるだけ買った後に、￥1000増えた場合の金額は、" + result(money % cake + 1000) + "です");
		out.println("<br>");
	%>
</body>
</html>