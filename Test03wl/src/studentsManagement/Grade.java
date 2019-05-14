package studentsManagement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;

public class Grade {
	int number = 0;
	Scanner sc;
	HashMap<Integer, Student> stu;

	Grade() {
		sc = new Scanner(System.in);
		stu = new HashMap<Integer, Student>();
	}

	public void input(Student st) {

		sc = new Scanner(System.in);

		System.out.print("이름을 입력해 주세요.");
		String name = sc.next();
		st.setName(name);

		System.out.print("국어 성적을 입력해 주세요.");
		int kor = sc.nextInt();
		st.setKor(kor);

		System.out.print("영어 성적을 입력해 주세요.");
		int eng = sc.nextInt();
		st.setEng(eng);

		System.out.print("수학 성적을 입력해 주세요.");
		int math = sc.nextInt();
		st.setMath(math);

		st.setSum(kor, eng, math);
		st.result();

		number++;
		st.setNumber(number);

		stu.put(number, st);

	}

	public void outputAll() {
		Set<Integer> keySet = stu.keySet();
		Iterator<Integer> iterator = keySet.iterator();
		if (iterator.hasNext()) {
			while (iterator.hasNext()) {
				int key = iterator.next();

				System.out.print("학생 번호 : " + stu.get(key).getNumber() + " ");
				System.out.print("이름 : " + stu.get(key).getName() + " ");
				System.out.print("국어 : " + stu.get(key).getKor() + " ");
				System.out.print("영어 : " + stu.get(key).getEng() + " ");
				System.out.print("수학 : " + stu.get(key).getMath() + " ");
				System.out.print("총점 : " + stu.get(key).getSum() + " ");
				System.out.print("평균 : " + stu.get(key).getAvg() + " ");
				System.out.println(" ");

			}
		} else {
			System.out.println("학생이 없습니다.");
		}

	}

	public void outputOption() {
		Set<Integer> keySet = stu.keySet();
		Iterator<Integer> iterator = keySet.iterator();
		System.out.print("원하시는 평균 점수를 입력하세요.");
		int score = sc.nextInt();
		while (iterator.hasNext()) {
			int key = iterator.next();
			if (stu.get(key).getAvg() >= score) {

				System.out.print("학생 번호 : " + stu.get(key).getNumber() + " ");
				System.out.print("이름 : " + stu.get(key).getName() + " ");
				System.out.print("국어 : " + stu.get(key).getKor() + " ");
				System.out.print("영어 : " + stu.get(key).getEng() + " ");
				System.out.print("수학 : " + stu.get(key).getMath() + " ");
				System.out.print("총점 : " + stu.get(key).getSum() + " ");
				System.out.print("평균 : " + stu.get(key).getAvg() + " ");
				System.out.println("");
			}
		}
	}

	public void search() {
		Set<Integer> keySet = stu.keySet();
		Iterator<Integer> iterator = keySet.iterator();
		try {
			System.out.print("검색 할 이름을 입력해 주세요.");
			String name = sc.next();
			while (iterator.hasNext()) {
				int key = iterator.next();
				if (stu.get(key).getName().equals(name)) {
					System.out.print("학생 번호 : " + stu.get(key).getNumber() + " ");
					System.out.print("이름 : " + stu.get(key).getName() + " ");
					System.out.print("국어 : " + stu.get(key).getKor() + " ");
					System.out.print("영어 : " + stu.get(key).getEng() + " ");
					System.out.print("수학 : " + stu.get(key).getMath() + " ");
					System.out.print("총점 : " + stu.get(key).getSum() + " ");
					System.out.print("평균 : " + stu.get(key).getAvg() + " ");
					System.out.println("");
				}
			}
		} catch (NoSuchElementException e) {
			System.out.println("없는 학생입니다.");
			System.out.println("");
		}
		
	}

	public void delete() {
		
		System.out.println("삭제할 학생의 학번과 이름을 입력하세요.");
		System.out.print("이름");
		String name = sc.next();
		System.out.print("학번");
		int number = sc.nextInt();
		try {
		for (int i = 1; i <= stu.size(); i++) {
			if (name.equals(stu.get(i).getName()) && number == (stu.get(i).getNumber())) {
				stu.remove(i);
				
			}
			break;
		}
		System.out.println("삭제되었습니다.");
	}catch(NullPointerException e) {
		System.out.println("없는 학생번호와 이름 입니다.");
	}
	}

	public void modify() {

		System.out.print("수정 할 사람의 이름을 입력하세요.");
		String name = sc.next();

		System.out.print("수정 할 사람의 학번을 입력하세요.");
		int number = sc.nextInt();

		Set<Integer> keySet = stu.keySet();
		Iterator<Integer> iterator = keySet.iterator();
		System.out.println("1. 국어점수 2.영어점수 3.수학점수");
		int a = sc.nextInt();
		
		while (iterator.hasNext()) {
			int key = iterator.next();

			switch (a) {
			case 1:
				if (name.equals(stu.get(key).getName()) && number == (stu.get(key).getNumber())) {
					System.out.println(stu.get(key).getName() + "의 바뀐 국어점수를 입력하세요.");
					int kor = sc.nextInt();
					stu.get(key).setKor(kor);

					stu.get(key).setSum(kor, stu.get(key).getEng(), stu.get(key).getMath());
					stu.get(key).result();
					System.out.println("수정이 완료 되었습니다.");
					return;
					
				}else if(!name.equals(stu.get(key).getName()) || number != (stu.get(key).getNumber())){
					System.out.println("이름과 학번이 일치하지 않습니다.");
					return;
				}
				break;
			case 2:
				if (name.equals(stu.get(key).getName()) && number == (stu.get(key).getNumber())) {
					System.out.println(stu.get(key).getName() + "의 바뀐 영어점수를 입력하세요.");
					int eng = sc.nextInt();
					stu.get(key).setEng(eng);

					stu.get(key).setSum(stu.get(key).getKor(), eng, stu.get(key).getMath());
					stu.get(key).result();
					System.out.println("수정이 완료 되었습니다.");
					return;
				}else if(!name.equals(stu.get(key).getName()) || number != (stu.get(key).getNumber())){
					System.out.println("이름과 학번이 일치하지 않습니다.");
					return;
				}
				break;
			case 3:
				if (name.equals(stu.get(key).getName()) && number == (stu.get(key).getNumber())) {
					System.out.println(stu.get(key).getName() + "의 바뀐 수학점수를 입력하세요.");
					int math = sc.nextInt();
					stu.get(key).setMath(math);

					stu.get(key).setSum(stu.get(key).getKor(), stu.get(key).getEng(), math);
					stu.get(key).result();
					System.out.println("수정이 완료 되었습니다.");
					return;
				}else if(!name.equals(stu.get(key).getName()) || number != (stu.get(key).getNumber())){
					System.out.println("이름과 학번이 일치하지 않습니다.");
					return;
				}
				break;

			}

		}

	}

}
