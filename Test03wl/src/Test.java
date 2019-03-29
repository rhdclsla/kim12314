import java.util.Scanner;

public class Test {
	Memory mem;
	Myqueue mq = new Myqueue();	
	Mystack ms = new Mystack();	
	public Test() {
		Scanner sc = new Scanner(System.in);

		while (true) {
			System.out.println("1번.큐  2번.스택  3번.종료 ");
			int a = sc.nextInt();
			if (a == 1) {
				System.out.println("큐입니다.");
				mem = mq;
				
			} else if (a == 2) {
				System.out.println("스택입니다.");
				mem = ms;
				
			} else if (a == 3) {
				System.out.println("시스템을 종료합니다.");
				System.exit(0);
			}
			
			while(true) {
				System.out.println("1.push 2.pop 3.close");
				int choice = sc.nextInt();
				if(choice ==1) {
					try {
						mem.push(sc.nextInt());	
					}catch(ArrayIndexOutOfBoundsException e) {
						System.out.println("배열을 초과했습니다.");
					}
					
				}
				else if(choice == 2) {
					try {
						System.out.println(mem.pop());
					}catch(ArrayIndexOutOfBoundsException e) {
						System.out.println("배열이 비어있습니다.");
					}
					
					
				}
				else if(choice ==3) {
					break;
				}
			}
		}
	}

	public static void main(String[] a) {
		new Test();
	}
}
