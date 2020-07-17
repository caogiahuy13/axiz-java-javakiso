<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>

  <!-- ※このファイルは全ての処理を実装済です。変更しないでください。  -->

  <h1>Java基礎 - 演習問題3</h1>
  <h2>ロボットへメッセージ送信</h2>

  <form action="javaBasic3_result.jsp" method="post">
    <label>名前：</label>
    <input type="text" name="name">
    <br>
    <label>年齢：</label>
    <input type="number" min="1" max="200" name="age">
    <br>
    <label>血液型：</label>
    <label>
      <input type="radio" name="bloodType" value="typeA" checked>
      A型
    </label>
    <label>
      <input type="radio" name="bloodType" value="typeB">
      B型
    </label>
    <label>
      <input type="radio" name="bloodType" value="typeAB">
      AB型
    </label>
    <label>
      <input type="radio" name="bloodType" value="typeO">
      O型
    </label>
    <br>
    <button type="submit">送信</button>
  </form>
</body>
</html>