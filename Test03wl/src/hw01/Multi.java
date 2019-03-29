package hw01;

import java.util.Scanner;

public class Multi {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("입력할 구구단 : ");
		int num = sc.nextInt();
			for (int i = 0; i < 9; i++) {
				System.out.println(num + "*" + i + "=" + num * i);

			}

	}

}
