<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題1</title>
</head>
<body>

  <h1>Java基礎 - 演習問題1</h1>

  <p>
    <span>水の単価：100円</span>
    <br>
    <span>お茶の単価：150円</span>
    <br>
    <span>所持金：1000円</span>
  </p>
  <%!
	public String result(int value) {
	  	return "\"" + value + "円\"";
  	}

  %>
  <%
      /*
        ・printlnの()の中を必要に応じて修正してください。
        ・新たにprintlnを追加しないでください。
      */
      int money = 1000, water = 100, tea = 150;

      out.println("水とお茶を1個ずつ購入する場合の金額は、" + result(water + tea) + "です");
      out.println("<br>");
      out.println("水とお茶を1個ずつ買った場合、所持金が" + result(money - water - tea) + "残ります");
      out.println("<br>");
      out.println("お茶を6個購入する場合の金額は、" + result(6 * tea) + "です");
      out.println("<br>");
      out.println("所持金で水を" + (money / water) + "個購入できます");
      out.println("<br>");
      out.println("所持金でお茶を買えるだけ買った後は、" + result(money % tea) + "残ります");
  %>

</body>
</html>