$(function(){//document.ready
  $(".gnb > li").mouseover(function(){
    //이벤트가 발생된 li요소의 자식요소인 .sub slideDown메서드로 펼쳐줍니다.
    $(this).find(".sub").stop().slideDown("slow");
  });
  //주메뉴에서 마우스가 떠나면
  $(".gnb > li").mouseout(function(){
    $(this).find(".sub").stop().slideUp("slow");
  });
  // document.querySelector('input[name="gift"]:checked').value;
  // document.querySelector('button[name="gift"]:checked').value;

  // $("label").hover(function(){
  //   $(this).css("backgraound-color","#5b627c"),
  //       function(){
  //         $(this).css("backgraound-color","#5b627c")
  //       }
  // })


  $('.RadioLabel').click(function(){
   // let outPut = $('input[name=gift]').val();

    let outPut = $('input:radio[name=gift]:checked').val();
    console.log(outPut)
    console.log( "###"+ $('input:radio[name=gift]:checked').val())

   //let mainOutPut = outPut.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
  //console.log(mainOutPut + "###")

    //클릭 버튼 색상변경 초기화
    $(".result *").remove("");
    $(".result").append('<div class="result">' + outPut + ' 원</div>');
    $(this).css({
      'background':'#5b627c',
      'color':'#fff'
    })
    $('.RadioLabel').not(this).css({"background":"#ffffff", 'color':'#000000'})
  })
})

function giftLevel(type){
  if("1" == type){
    $('#giftLevel1').css({
      "background-color": "#5b627c"
      ,"color": "#fff"
    })
    $('#giftLevel2').css({
      "background-color": "#fff"
      ,"color": "#000000"
    })
  }else if ("2" == type){
    $('#giftLevel2').css({
      "background-color": "#5b627c"
      ,"color": "#fff"
    })
    $('#giftLevel1').css({
      "background-color": "#fff"
      ,"color": "#000000"
    })
  }
}
