<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%!
	// ロボットクラス
	public class Robot {
		private String name;
		private int age;
		private String bloodType;

		Robot() {
			name = "ロボット";
			age = 20;
		}

		public String reply1(String name) {
			String reply = String.format("こんにちは、%sさん！", name);
			String additionalReply = "私と同じ名前ですね！";
			reply += name.equals(this.name) ? additionalReply : "";
			return reply;
		}

		public String reply2(int age) {
			if (age > this.age) {
				return String.format("私より%d歳年上ですね。", age - this.age);
			} else if (age < this.age) {
				return String.format("私より%d歳年下ですね。", this.age - age);
			} else {
				return "私と同い年なんですね！";
			}
		}

		public String reply3(String bloodType) {
			switch(bloodType) {
			case "typeA":
				return "私もA型です！";
			case "typeB":
				return "B型の人と話すのは初めてです。";
			case "typeAB":
				return "私の母がAB型です。";
			case "typeO":
				return "私の父がO型です。";
			default:
				return "私はA型です！";
			}
		}
	}
%>
<%!
	public String getName(String name) {
		return name.isEmpty() ? "名無し" : name;
	}

	public int getAge(String age) {
		return age.isEmpty() ? 0 : Integer.parseInt(age);
	}

%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
    request.setCharacterEncoding("UTF-8");

    String name = getName(request.getParameter("name"));
	int age = getAge(request.getParameter("age"));
	String bloodType = request.getParameter("bloodType");

    // ロボットからの返信用メッセージ作成
	Robot robot = new Robot();

	String reply1 = robot.reply1(name);
	String reply2 = robot.reply2(age);
	String reply3 = robot.reply3(bloodType);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p><%= reply1 %></p>
    <p><%= reply2 %></p>
    <p><%= reply3 %></p>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>