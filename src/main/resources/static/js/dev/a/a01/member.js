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
        if($("#userPw").val() != $("#userPw_re").val()){
            alert("비밀번호가 일치하지 않습니다 \n 동일하게 입력해주세요.")
            return false;
        }
        if(!fn_checkPhone()){
            alert("휴대 전화번호는 형식에 맞춰 입력해주세요 \n 예)01065445844");
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
function addSearch(type){
    var currentScroll = Math.max(
        document.body.scrollTop,
        document.documentElement.scrollTop
    );
    daum.postcode.load(function(){
        new daum.Postcode({
            oncomplete: function (data){
                $("#" + type + "Addr").val(data.roadAddress);
                $("#" + type + "Code").val(data.sigunguCode)
                $("#" + type).css("display", "none");
            },
            onresize: function (size){
                $("#" + type).css("height", size.height + "px");
            },
            which: "100%",
            height: "100%",

        }).embed(type);
    });
    $("#" + type).css("display", "block");
}
//
//
// tis=`<div>test</div>`
// $('#regSbmit').append(tis);
//
//
