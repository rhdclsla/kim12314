public abstract class Memory {

	
	protected int [] data;
	   int pos;
	   
	   public Memory() {
	      data=new int [5];
	      pos=0;
	   }
	   
	   public Memory(int num) {
	      data=new int [num];
	      pos=0;
	   }
	   
	   void push(int data) {
		  try {
	      this.data[pos++]=data;
		  } catch(ArrayIndexOutOfBoundsException e) {
			  System.out.println("배열초과");
			  pos--;
		  }
	      
	   }
	   
	    abstract int pop();

}

