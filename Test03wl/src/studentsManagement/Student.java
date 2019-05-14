package studentsManagement;

public class Student {

	private String name;
	private int number;
	private int kor;
	private int eng;
	private int math;
	private int sum;
	private double avg;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int kor, int eng, int math) {
		sum = kor+eng+math;
		avg = sum/3.f;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	public void Modify(int kor, int eng, int math) {
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		
		result();
	}
	public void result() {
		avg = sum/3.f;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return ""+number;
	}

	
}
