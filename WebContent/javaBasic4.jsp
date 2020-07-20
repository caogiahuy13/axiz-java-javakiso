<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    /*
    "todo"のコメントが入っているところ以外は処理を実装済です。
    "todo"のコメントを参考に、必要な処理を実装してください

    今回は、下記2つの値をセッションに保存します。
      "totalNum"： 実施回数 (int型)
      "winNum"：勝った回数 (int型)
    */

    // セッション初期化
    if (session.getAttribute("totalNum") == null) {
        session.setAttribute("totalNum", 0);
    }

    if (session.getAttribute("winNum") == null) {
        session.setAttribute("winNum", 0);
    }

    // 入力値を取得
    request.setCharacterEncoding("UTF-8");
    String numStr = request.getParameter("num");
    String btn = request.getParameter("btn");

    // 振る回数の入力値を入れるための変数
    int num = 0;

    // 振る回数を数値に変換して、numへセット
    if (numStr != null && !numStr.isEmpty()) {
        num = Integer.parseInt(numStr);
    }

    // 出た目用変数 (この変数の値を "出た目" として表示)
    String result = "";

    // サイコロを振った合計用変数 (この変数の値を "サイコロを振った合計" として表示)
    int sum = 0;

    // 勝敗用変数 (この変数の値を "勝敗" として表示)
    String message = "";

    // 勝った回数用変数 (この変数の値を "勝った回数" として表示)
    int winNum = 0;

    // 実施回数用変数 (この変数の値を "実施回数" として表示)
    int totalNum = 0;

    if (btn != null && btn.equals("reset")) {
        // リセットボタンが押された場合、セッションを破棄
        session.invalidate();
    } else if (num != 0) {
        /*  todo：要実装
          一部の処理を実装済です。
          必要な処理を加えて完成させてください。

          ＜振る回数分の繰り返し処理＞
          ・振る回数の入力に関わらず、1回だけ1～6のランダムの数を生成し、
            出た目に応じて勝ち負けを表示するような処理が入っています。
          ・この処理を参考に、振る回数分繰り返すように、処理を実装してください。

          ＜勝った回数の保存＞
          ・実施回数については、セッション使って実施回数を更新する処理を実装済です。
          ・この処理を参考に、勝った回数を更新する処理を実装してください。
        */

        for (int i=0; i<num; i++) {
        	// 1～6の数をランダムで生成
            int val = (int) (Math.random() * 6 + 1);

            // 合計に加算
            sum += val;

            // 出た目用の文字列を生成
            if (result.isEmpty()) {
                result += val;
            } else {
                result += ", " + val;
            }
        }

        // セッションから実施回数を取得
        totalNum = (int) session.getAttribute("totalNum");
		winNum = (int) session.getAttribute("winNum");

        // 実施回数を1加算
        totalNum += 1;

        if (sum % 2 == 0) {
            // 合計が偶数の場合、勝敗用の文字列をセット
            message = "あなたの勝ちです";
            winNum++;
        } else {
            // 合計が奇数の場合、勝敗用の文字列をセット
            message = "あなたの負けです";
        }

        // セッションに実施回数を保存
        session.setAttribute("totalNum", totalNum);
		session.setAttribute("winNum", winNum);
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題4</title>
</head>
<body>

  <h1>Java基礎 - 演習問題4</h1>

  <div>
    <h2>サイコロゲーム</h2>
    <p>出た目の合計が偶数の場合あなたの勝ちです。</p>
    <form action="javaBasic4.jsp" method="post">
      <label>振る回数：</label>
      <input type="number" min="1" max="10" name="num">
      <br>
      <button type="submit" name="btn" value="add">開始</button>
      <button type="submit" name="btn" value="reset">リセット</button>
    </form>
  </div>

  <div>
    <h2>結果</h2>
    <p>
      出た目：
      <%=result%>
    </p>
    <p>
      サイコロを振った合計：
      <%=sum%>
    </p>
    <p>
      勝敗：<%=message%>
    </p>
    <h2>戦歴</h2>
    <p>
      勝った回数：<%=winNum%>
      / 実施回数：<%=totalNum%>
    </p>
  </div>
</body>
</html>