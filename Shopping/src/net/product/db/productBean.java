package net.product.db;

public class productBean {
	//<td>상품코드</td><td>이미지</td><td>상품정보</td><td>수량</td><td>상품구매금액</td><td>주문처리상태</td><td>취소/교환/반품</td>
	
	private String code;
	private String infomation;
	private int num;
	private int price;
	private String condition;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getInfomation() {
		return infomation;
	}
	public void setInfomation(String infomation) {
		this.infomation = infomation;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
}
