$(document).ready(function (){
    console.log("test");
    tis=`<div>test</div>`
    $('#regSbmit').append(tis);


    $("#idChack").click(function () {
        let param = {userId: $("#userId").val() };
        fn_callAjax("/userJoin/checkDuplication",param,{
            successCallback: function (data){
                if(data.result > 0){
                    alert("이미 사용중인 아이디입니다.");
                    $("#userId").val("");
                }else alert("사용 가능한 아이디 입니다.");
            }
        });
    });
});


tis=`<div>test</div>`
$('#regSbmit').append(tis);