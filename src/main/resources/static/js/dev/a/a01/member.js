$(document).ready(function (){
    console.log("test");
    tis=`<div>test</div>`
    $('#regSbmit').append(tis);
    $("#idChack").click(function () {
        let param = {userId: $("#userId").val() };
        if(/[^a-z0-9]/gi.test($("#userId").val().trim())){
            alert("아이디는 영문과 숫자만 입력할 수 있습니다.")
            return false;
        }
        if(userId ==""|| userId.length < 6 || userId.length< 20){
            alert("아이디를 6~20자 이내로 입력해주세요.")
            return false;
        }
        /* 아이디 유무 검사 */
        fn_callAjax("/userJoin/checkDuplication",param,{
            successCallback: function (data){
                if(data.result > 0){
                    alert("이미 사용중인 아이디입니다.");
                    $("#duplicationYn").val("Y");

                }else {
                    alert("사용 가능한 아이디 입니다.");
                    $("#duplicationYn").val("N");
                }
            }
        });
    });

    /** 가입정보 등록 */
    $("#btnNext").click(function(){
        let joinForm = $("#joinForm");
        let userId = $("#userId").val();
        if(fn_isNull(userId)){
            alert("아이디를 입력해주세요.")
            return false;
        }
       if($("#duplicationYn").val() == "Y"){
      //  if($("input[name = 'duplicationYn']").val() == "Y"){
            alert("아이디 중복확인을 해주세요.")
            return false;
        }
        if(!fn_checkPwd()){
            alert("영문, 숫자, 특수문자를 조합하여 8~16글자로 입력해주세요.")
            return false;
        }
        if($("#userPwd").val() != $("#userPwd2").val()){
            alert("비밀번호가 일치하지 않습니다 \n 동일하게 입력해주세요.")
            return false;
        }
        if(!fn_checkPhone()){
            alert("휴대 전화번호는 형식에 맞춰 입력해주세요 \n 예)010-6544-5844");
            return false;
        }

        if(confirm("저장하시겠습니까?")){
            fn_postSubmit("joinForm","/userJoin/memberSave")
        }
    })
});


/*************************
 *  다음 주소 검색팝업
 * ********************** */
function daumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postCode').value = data.zonecode;
            document.getElementById("realAddr").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("realAddrDtl").focus();
        }
    }).open();
}