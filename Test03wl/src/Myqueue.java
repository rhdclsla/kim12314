
public class Myqueue extends Memory {
	 private int front;
	   public Myqueue() {
	      front=0;
	   }
	   @Override
	   int pop() {
	      
	      return data[front++];
	   }
}
