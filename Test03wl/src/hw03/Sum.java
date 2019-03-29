package hw03;

public class Sum {

	Sum(){
		int sum;
		int j=0;
		int result =0;
		for(int i = 1 ; i<=10;i++) {
			sum = i+j;
			j=sum;
			result += sum;
		}
		System.out.println(result);
		
	}
	
	public static void main(String[] args) {
		new Sum();
	}

}
