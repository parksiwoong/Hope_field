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