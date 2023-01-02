function fn_callAjax(url, param, option){
    $.ajax({
        url: url
        ,contentType: "application/x-www-form-urlencoded; charset=UTF-8"
        ,type: "POST"
        ,dataType: "json"
        ,data: param
        ,success: function(param){
            if(typeof option.successCallback(param) === "function"){
                option.successCallback(param);
            }
        },error: function(xhr, status, err){
            alert("처리중 오류가 발생하였습니다.");
            console.log(err);
        }
    });
}
/** 널값 확인 함수 */
function fn_isNull(value){
    if(value == null || value == "" || typeof(value) == "undefined"){
        return true;
    }
    return false;
}
/** 비밀번호 정규화 체크 */
function fn_checkPwd(){
    var check = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,16}$/;
    if(check.test($("#userPwd").val())){
        return true;
    }
    return;
}
function fn_checkPhone(){
    let mobile1 = $("#mobile1").val();
    let mobile2 = $("#mobile2").val();
    let mobile3 = $("#mobile3").val();
    $("#userMpno").val(mobile1 + mobile2 + mobile3)
    console.log( $("#userMpno").val() + " :: @@@@@@@@@")
    var regExp = /^(?:(010\d{4})|(01[1|6|7|8|9]\d{3,4}))(\d{4})$/;
    if (regExp.test($("#userMpno").val())){
        return true;
    }
    return false;
}
/** css 안보이게 */
function fn_foldRealPostcode(type){
    $("#" + type).css("display", "none");
}

function fn_postSubmit(formId, url){

    $("#" + formId).attr("method", "post");
    // $("#" + formId).attr("enctype","application/x-www-form-urlencoded");
    $("#" + formId).attr("action", url).submit();

  //  $("#" + formId).submit();
}
