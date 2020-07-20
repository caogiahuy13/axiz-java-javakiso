<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5</title>
</head>
<body>

  <!-- ※このファイルは全ての処理を実装済です。変更しないでください。  -->

  <h1>Java基礎 - 演習問題5</h1>

  <h2>三角形の面積計算</h2>

  <form action="javaBasic5_result.jsp" method="post">
    <label>底辺：</label>
    <input type="number" min="1" max="1000" name="width">
    <br> <label>高さ：</label>
    <input type="number" min="1" max="1000" name="height">
    <br>
    <button type="submit" name="btn" value="triangle">計算</button>
  </form>

  <h2>長方形の面積計算</h2>

  <form action="javaBasic5_result.jsp" method="post">
    <label>縦：</label>
    <input type="number" min="1" max="1000" name="height">
    <br> <label>横：</label>
    <input type="number" min="1" max="1000" name="width">
    <br>
    <button type="submit" name="btn" value="rectangle">計算</button>
  </form>
</body>
</html>