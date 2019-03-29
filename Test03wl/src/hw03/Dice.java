package hw03;

public class Dice {

	Dice(){
		int first;
		int second;
		for(int i = 1; i<=7;i++) {
			for(int j = 1 ;j <=7;j++) {
				if(i+j==7) {
					first = i;
					second  = j;
					System.out.println(first+"+"+second);
				}
			}
		}
	}
	
	public static void main(String[] args) {
	
		new Dice();
	}

}
