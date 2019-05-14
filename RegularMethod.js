

function call() {
	var id = document.getElementById("id");
	var pw = document.getElementById("pw");
	var checkpw = document.getElementById("checkpw");
	var email = document.getElementById("email");
	var jumin = document.getElementById("jumin");
	var year = document.getElementById("years");

	var checkedIdPw = /^[a-zA-Z0-9]{4,12}$/;
	var checkedEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var mesage = "4~12자의 영문 대소문자와 숫자로만 입력";
	
	
	// 아이디 체크
	if(id.value ==""){
		alert("아이디를 입력해 주세여");
		return false;
	}
	
	if (checkedIdPw.test(id.value)) {
		
	}else{
		alert("아이디는 "+mesage);
		id.focus();
		return false;
		
	}
	
	
	// 비밀번호 체크
	
	if(pw.value == ""){
		alert("비밀번호를 입력해 주세여");
		return false;
	}
	
	if(id.value == pw.value){
		alert("아이디랑 비밀번호랑 같습니다");
		return false;
	}
	
	if (checkedIdPw.test(pw.value)) {
		
	}else{
		alert("비밀번호는 "+mesage);
		pw.focus();
		return false;
	}
	
	
	// 비밀번호 확인
	if (checkpw.value == pw.value) {
		
	}else{
		alert("비밀번호가 일치하지 않습니다 다시 입력해 주세요");
		pw.focus();
		return false;
	}

	// 이메일 체크
	if (checkedEmail.test(email.value)) {

	}else{
		alert("이메일 형식이 잘못되었습니다 다시 입력해 주세요");
		email.focus();
		return false;
	}

	// 주민번호 체크
	if (calcul(jumin.value)==true) {
		
	}else{
		alert("주민번호 형식이 잘못되었습니다 다시 입력해 주세요");
		jumin.focus();
		return false;
	}

	// 생년월일
	if(birth(jumin.value, year.value) == true){
		
	}else{
		alert("생년 월 일이 잘못되었습니다 다시 입력해 주세요");
		year.focus();
		return false;
	}
	
	alert("회원가입이 완료되었습니다.");
	return true;
}
// 주민번호 계산
function calcul(jumin){
	var arr = Array.from(jumin);
	var result=0;
	for(var i =0; i<arr.length-1;i++){
		if(i>7){
			arr[i]*=(i-6);
			result += arr[i];
		}else{
			arr[i]= arr[i]*(i+2);
			result += arr[i];
		}
	}
	
	var num1 = result%11;
	var num2 = 11-num1;


	if(num2 == arr[12]){
		return true;
	}
}
//생년월일 계산
function birth(jumin,year){
	var arr = Array.from(jumin);
	var year = Array.from(year);
	var first = {};
	for(var i =0;i<arr.length;i++){
		first["arr"+i]  = arr[i];
	}
	for(var i =0;i<year.length;i++){
		first["year"+i]  = year[i];
	}
	
	var arr1 = ""+first.arr0+first.arr1;
	var arr2 = ""+first.arr2+first.arr3;
	var arr3 = ""+first.arr4+first.arr5;
	
	var year1 = ""+first.year2+first.year3;
	var year2 = ""+first.year5+first.year6;
	var year3 = ""+first.year8+first.year9;
	
	if(year1 == arr1 && year2 == arr2 && year3 == arr3){
		return true;
	}
}




















