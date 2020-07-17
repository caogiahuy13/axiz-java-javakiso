<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%!
	public int[] sumByCol(int[][] arr) {
		int numOfRows = arr.length;
		int numOfCols = arr[0].length;
		int[] sumArr = new int[numOfCols];

		for (int i=0; i<numOfCols; i++) {
			sumArr[i] = 0;
		}
		for (int i=0; i < numOfCols; i++) {
			for (int j=0; j< numOfRows; j++) {
				sumArr[i] += arr[j][i];
			}
		}

	    return sumArr;
	}

	public int[] sumByRow(int[][] arr) {
		int numOfRows = arr.length;
		int numOfCols = arr[0].length;
		int[] sumArr = new int[numOfRows];

		for (int i=0; i<numOfRows; i++) {
			sumArr[i] = 0;
		}
		for (int i=0; i < numOfRows; i++) {
			for (int j=0; j< numOfCols; j++) {
				sumArr[i] += arr[i][j];
			}
		}

	    return sumArr;
	}


	public int sumOfArray(int[] array) {
		int sum = 0;
		for(int ele : array) {
			sum += ele;
		}
		return sum;
	}

	public String printStringArray(String[] arr, String openTag, String closeTag) {
		String res = "";
		for(String ele : arr) {
			res += openTag + ele + closeTag;
		}
		return res;
	}

	public String printIntArray(int[] arr, String openTag, String closeTag) {
		String res = "";
		for(int ele : arr) {
			res += openTag + ele + closeTag;
		}
		return res;
	}

	public String printTable(String[] productClass, int[][] amount, int[] sumProductAmount) {
		String res = "";
		for (int i=0; i<productClass.length; i++) {
			res += String.format("<tr><td>%s</td>%s<td>%d</td>",
					productClass[i],
					printIntArray(amount[i],"<td>","</td>"),
					sumProductAmount[i]);
		}
		return res;
	}
%>
<%
	String sumTitle = "合計";
	String[] month = {"1月","2月","3月"};
	String[] productClass = {"食品", "飲料"};
	int[][] amount = {
		{352000, 442000, 520000},
		{278000, 342600, 380500}
	};
	int[] sumMonthAmount = sumByCol(amount);
	int total = sumOfArray(sumMonthAmount);
	int[] sumProductAmount = sumByRow(amount);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Java基礎_演習問題2（発展）</title>
<style>
table {
  border-collapse: collapse;
}

table th, table td {
  border: solid 1px black;
}
</style>
</head>
<body>
  <!-- 必要に応じて処理を変更してください  -->
  <h1>Java基礎 - 演習問題2</h1>
  <h2>売上一覧</h2>
  <table>
    <tr>
      <th></th>
      <%= printStringArray(month, "<th>", "</th>") %>
      <th><%= sumTitle %></th>
    </tr>
    <%= printTable(productClass, amount, sumProductAmount) %>
    <tr>
      <td><%= sumTitle %></td>
      <%= printIntArray(sumMonthAmount, "<td>", "</td>") %>
      <td><%= total %></td>
    </tr>
  </table>
</body>
</html>