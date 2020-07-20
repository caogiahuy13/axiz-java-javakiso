<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    /*
       下記コメントを参考に、必要な処理を記述してください
       現在は各変数に仮で値をセットしているので、
       商品が選択されている場合の処理に警告(デッドコード)が出ています
       入力値を受け取るように修正すれば、この警告は消えます
    */

    // 入力値を取得
    // String[] product = null; //現在は仮で値をセットしている。実際は入力値を受け取る
    String[] product = request.getParameterValues("product");

    // セッションから現在の所持金を取得
    // int money = 150000; //現在は仮で値をセットしている。実際はセッションから取得する
    int money = 150000;
    if (session.getAttribute("money") != null) {
    	money = (int) session.getAttribute("money");
    }

    // 表示用変数定義
    String msg = ""; // 購入メッセージ
    String result = ""; // 購入した商品
    int sumAmount = 0; // 購入した金額の合計
    int newMoney = money; // 購入後の所持金

    // 商品が選択されているか判断
    if (product == null || product.length == 0) {
		msg = "商品が選ばれていません";
    } else {
        // 購入金額等の計算を行う
        // 商品は複数選択されるので、
        // 受け取った入力値(product)に複数選択した値が入っている
        // 拡張for文を使用して、変数productから
        // 選択したものを取り出し、
        // 対応する商品の金額をsumAmountに加算
        // また、選択した商品名をresultにくっつけて、文字列を作成
        // (商品名の区切り(後ろ)には<br>をつける)
        // (例:「テレビ」と「冷蔵庫」を選択した場合、sumAmountの値は「50000」
        //      resultの値は「テレビ<br>冷蔵庫<br>」になる

        // 現在の所持金と購入金額の合計を比較して、
        // 所持金が足りているか判断

        // 足りている場合は、購入後の所持金を計算し、
        // 変数:newMoneyにセット

        // 購入後の所持金をセッションに保存

        msg = "以下の商品を購入しました";

        for (String prod : product) {


        	switch(prod) {
        	case "tv":
        		sumAmount += 20000;
        		result += "テレビ" + "<br>";
        		break;
        	case "refrigerator":
        		sumAmount += 30000;
        		result += "冷蔵庫"+ "<br>";
        		break;
        	case "microWave":
        		sumAmount += 10000;
        		result += "電子レンジ"+ "<br>";
        		break;
        	case "washingMachine":
        		sumAmount += 50000;
        		result +=  "洗濯機"+ "<br>";
        		break;
			default:
				break;
        	}
        }

        if (money < sumAmount) {
			msg = "所持金が足りませんでした";
        } else {
			newMoney = money - sumAmount;
			session.setAttribute("money", newMoney);
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題4(発展)</title>
</head>
<body>
  <h1>Java基礎 - 演習問題4(発展)</h1>

  <h2>購入結果</h2>
  <h3><%=msg%></h3>
  <p>
    購入前の所持金：<%=money%><br> 購入後の所持金：<%=newMoney%></p>
  <p>
    【購入商品】<br>
    <%=result%>
  </p>

  <a href="javaBasicDev4_input.jsp">戻る</a>
</body>
</html>