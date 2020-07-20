package util;

/**
 * メソッドをまとめたUtilityクラス
 */
public class Utility {

	/*
	  下記処理を追加、修正してください。
	
	<getTriangleArea、getRectangleAreaメソッド>
	  1) このメソッド内では、変数widthとheightを定義しています。
	     (今の時点では変数width、heightはどこでも使っていないため、警告が出ています)　
	     この変数に引数で受け取った値を数値に変換して代入してください。
	     ただし、未入力の場合は数値に変換できないため、isNullOrEmptyメソッドを使って、
	     未入力でない場合のみ、数値に変換してください。
	     例): if (!isNullOrEmpty(widthStr)) {
	            // 数値に変換
	          }
	
	  2) 変数widthとheightを使って、面積を計算し、returnしてください。
	     ただし、double型に変換して、返却してください。
	    (キャスト演算子を使ってください)
	
	  <isNullOrEmptyメソッド>
	  1) このメソッドは、引数に指定した文字列がnull、または空文字かを
	     判定するメソッドですが、今は必ずfalseが返ってくるようになっています。
	     引数の値がnull、または空文字の場合は、true
	     それ以外の場合は、falseを返すように修正してください。
	
	*/

	/**
	 * 引数を数値に変換し、三角形の面積を求める
	 */
	public static double getTriangleArea(String widthStr, String heightStr) {
		int width = isNullOrEmpty(widthStr) ? 0 : Integer.parseInt(widthStr);
		int height = isNullOrEmpty(heightStr) ? 0 : Integer.parseInt(heightStr);

		return (float) width * height / 2;
	}

	/**
	 * 引数を数値に変換し、長方形の面積を求める
	 */
	public static double getRectangleArea(String widthStr, String heightStr) {
		int width = isNullOrEmpty(widthStr) ? 0 : Integer.parseInt(widthStr);
		int height = isNullOrEmpty(heightStr) ? 0 : Integer.parseInt(heightStr);

		return (float) width * height;
	}

	/**
	 * 引数に指定した文字列がnull、または空文字かを判定
	 */
	public static boolean isNullOrEmpty(String str) {
		// todo:引数の値がnull、または空文字の場合は、true
		// それ以外の場合は、falseを返すように処理を修正する
		return str == null || str.isEmpty();
	}
}
