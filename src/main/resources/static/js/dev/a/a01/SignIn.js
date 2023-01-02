$(function(){//document.ready
    $(".gnb > li").mouseover(function(){
        //이벤트가 발생된 li요소의 자식요소인 .sub slideDown메서드로 펼쳐줍니다.
        $(this).find(".sub").stop().slideDown("slow");
    });
    //주메뉴에서 마우스가 떠나면
    $(".gnb > li").mouseout(function(){
        $(this).find(".sub").stop().slideUp("slow");
    });
})