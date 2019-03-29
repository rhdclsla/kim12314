package hw01;

public class Fibonach {

	public static void main(String[] agr) {
		int input = 1000, num1 = 0, num2 = 1, result = 0, count = 0;
		while(result<input) {
			result = num1+num2;
			num1 = num2;
			num2 = result;
			if(result%2 == 0) {
				count += result;
			}
		}
		System.out.println(count);
	}
}
