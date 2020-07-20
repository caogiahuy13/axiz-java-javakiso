package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

	/**
	 * ポイント計算
	 */
	public static int getPoint(int money) {
		double rate = 0.01;
		return (int) (money * rate);
	}

	/**
	 * ポイント計算(ランクあり)
	 */
	public static int getPoint(int money, int rank) {
		double goldRate = 0.03;
		double silverRate = 0.02;
		if (rank == 1) {
			return (int) (money * silverRate);
		} else if (rank == 2) {
			return (int) (money * goldRate);
		} else {
			return 0;
		}
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
