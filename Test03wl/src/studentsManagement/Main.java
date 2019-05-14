package studentsManagement;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Main {

	Main(){
		Scanner sc = new Scanner(System.in);
		Grade grade = new Grade();
		int i = 0;
		while (true) {
			Student student = new Student();
			
			try {
				System.out.println("1.입력    2.조회(전체/n점이상)  3.검색(이름)  4.삭제     5.수정    6.종료");
				int select = sc.nextInt();
				switch (select) {
				case 1:
					grade.input(student);
					i++;
					break;

				case 2:
					System.out.println("1.전체조회  2.n점(평균)이상 출력");

					try {
						int outsel = sc.nextInt();
						if (outsel == 1) {
							grade.outputAll();
						} else if (outsel == 2) {
							grade.outputOption();
						} else {
							System.out.println("1 또는 2번을 눌러주세요");
						}
					} catch (InputMismatchException e) {
						e.printStackTrace();

					}
					break;

				case 3:
					grade.search();
					break;

				case 4:
					grade.delete();
					break;

				case 5:
					grade.modify();
					break;

				case 6:
					System.exit(0);
					break;

				}
			} catch (InputMismatchException e) {
				System.out.println("숫자를 입력해 주세요");
				sc.nextLine();
			}
		}
	}

	public static void main(String[] args) {
		new Main();
	}
}
