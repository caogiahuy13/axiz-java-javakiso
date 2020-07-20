<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>

<!-- ※このファイルは全ての処理を実装済です。変更しないでください。  -->

<style>
.product {
  width: 200px;
}

.amount {
  width: 80px;
  text-align: right;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>ポイント計算</h2>

  <form action="javaBasicDev5_result.jsp" method="post">
    <table>
      <tr>
        <th>商品</th>
        <th>金額</th>
      </tr>
      <tr>
        <td>
          <input type="text" class="product" name="product1">
        </td>
        <td>
          <input type="number" min="1" max="100000" class="amount" name="amount1">
        </td>
      </tr>
      <tr>
        <td>
          <input type="text" class="product" name="product2">
        </td>
        <td>
          <input type="number" min="1" max="100000" class="amount" name="amount2">
        </td>
      </tr>
    </table>

    <p>
      <label>ランク：</label>
      <select name="rank">
        <option value="" selected></option>
        <option value="1">シルバー</option>
        <option value="2">ゴールド</option>
      </select>
    </p>

    <button type="submit">計算</button>

  </form>

</body>
</html>