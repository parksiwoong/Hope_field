$(function(){//document.ready
    $(".gnb > li").mouseover(function(){
      //이벤트가 발생된 li요소의 자식요소인 .sub slideDown메서드로 펼쳐줍니다.
      $(this).find(".sub").stop().slideDown("slow");
    });
    //주메뉴에서 마우스가 떠나면
    $(".gnb > li").mouseout(function(){
      $(this).find(".sub").stop().slideUp("slow");
    });

    $(".member").hide();
    $("#section_1").show();
    // document.getElementById("section_1").style.display = "block";
    // document.getElementById("section_2").style.display = "none";
    // document.getElementById("section_3").style.display = "none";
  })

function change_div(type){
        let section = $("#section_"+type).html();
        let sectionType = "section_"+type

    if(sectionType == "section_1") {
        // $(".member").empty();
        // $("#section_1").append(section);
        $(".member").hide();
        $("#section_1").show();
    }else if(sectionType == "section_2") {
        $(".member").hide();
        $("#section_2").show();
    }else if(sectionType == "section_3") {
        $(".member").hide();
        $("#section_3").show();
    }
}