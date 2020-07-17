<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%!
	public String cal(int a, int b, String operator) {
		float res = 0;

		switch(operator) {
		case "add":
			res = a + b;
			break;
		case "sub":
			res = a - b;
			break;
		case "mul":
			res = a * b;
			break;
		case "div":
			res = (float) a / b;
			break;
		default:
			break;
		}

		return Float.toString(res).replaceAll("\\.?0*$", "");
	}

	public String operatorSign(String operator) {
		switch(operator) {
		case "add":
			return "＋";
		case "sub":
			return "ー";
		case "mul":
			return "×";
		case "div":
			return "÷";
		default:
			return "";
		}
	}
%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
    String message = "";
    String num1Str = request.getParameter("num1");
	String num2Str = request.getParameter("num2");
	String operator = request.getParameter("operator");

    // 表示するメッセージ用の変数
    if (num1Str == null && num2Str == null) {
    	message = "数値を入力してください";
    } else if (num1Str.isEmpty() && num2Str.isEmpty()) {
		message = "数値が両方とも未入力です";
	} else if (num1Str.isEmpty() && !num2Str.isEmpty()) {
		message = "左側の数値が未入力です";
	} else if (!num1Str.isEmpty() && num2Str.isEmpty()) {
		message = "右側の数値が未入力です";
	} else {
		int num1 = Integer.parseInt(num1Str);
		int num2 = Integer.parseInt(num2Str);
		String sign = operatorSign(operator);
		String result = cal(num1, num2, operator);
		message = String.format("%s %s %s = %s", num1, sign, num2, result);
	}

    // メッセージ作成
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Java基礎_演習問題3(発展)</title>
	<style>
	.number {
	    width: 80px;
	}
	</style>
</head>
<body>
	<h1>Java基礎 - 演習問題3(発展)</h1>
	<h2>四則演算</h2>

	<p>
		<!-- メッセージの表示  -->
		<%= message %>
	</p>

	<form action="javaBasicDev3.jsp" method="post">
		<input type="number" min="1" max="999999" class="number" name="num1">
		<select name="operator">
			<option value="add">＋</option>
			<option value="sub">ー</option>
			<option value="mul">×</option>
			<option value="div">÷</option>
		</select> <input type="number" min="1" max="999999" class="number"name="num2">
		<button type="submit">計算</button>
	</form>
</body>
</html>