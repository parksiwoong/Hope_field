//menu down
$(function (){ //document.ready
  $(".nav > li").mouseover(function(){
    $(this).find(".sub").stop().slideDown("slow");
  });

  $(".nav > li").mouseout(function(){
      $(this).find(".sub").stop().slideUp("slow");
    });
  // $(".sub > li").mouseover(function(){
  //   $(this).find(".sub").stop().slideDown("5000");
  // });
  //
  // $(".sub > li").mouseout(function(){
  //     $(this).find(".sub").stop().slideUp("5000");
  //   });
  //
  //slide banner(슬라이드 배너)

  var timer = setInterval(slide,3000); //slide함수를 3초마다 실행하는 구문
  function slide(){ //slide함수 생성
    var first = $(".imgGroup .bg:first"); //변수 first에 첫번째 이미지요소를 할당

    //.imgGroup요소를 왼쪽으로 400px만큼 1초마다 이동
    $(".imgGroup").animate({"left":"-410px"},1000, //이미지의 여백도 같이 이동시켜줘야함
    function(){ //콜백함수로 왼쪽으로 이동한후 첫번째 요소를 마지막위치로 이동시키고 left값을 0으로 초기화
      $(this).append(first).css("left","0px");
    })
  }

  //.prev, .next, button 버튼에 마우스오버시 자동슬라이드 멈춤
  $(".prev, .next, button").hover(
    function(){ //마우스 오버시
      clearInterval(timer); //자동슬라이드 기능 멈춤
    }, function(){ //마우스 아웃시
      timer = setInterval(slide,3000); //다시 자동슬라이드 기능을 실행
    }
  )

  //왼쪽 버튼 클릭
  $(".prev").click(function(){
    //.imgGroup에 애니메이션 효과가 적용중일때는 return false로 함수 내부의 코드를 실행X
    if($(".imgGroup").is(":animated")){return false}
    var last = $(".imgGroup > .bg:last"); //마지막 이미지요소 선택

    //마지막 위치의 이미지를 첫번째 위치로 변경하고 left값을 -400px만큼 이동
    //그 후에 left 값을 다시 0으로 1초동안 이동
    $(".imgGroup").prepend(last).css("left","-400px").animate({"left":"0px"},1000)
  });

  //오른쪽 버튼 클릭
  $(".next").click(function(){
    //.imgGroup에 애니메이션 효과가 적용중일때는 return false로 함수 내부의 코드를 실행X
    if($(".imgGroup").is(":animated")){return false}
    var first = $(".imgGroup > .bg:first"); //첫번째 이미지요소 선택

    //imgGroup의 left 속성값을 0에서 -400px로 1초동안 이동
    //첫번째 위치의 이미지를 마지막 위치로 변경하고 left값을 -400px에서 0px으로 이동
    $(".imgGroup").animate({"left":"-400px"},1000,
    function(){ //콜백함수
      $(this).append(first).css("left","0px");
    })
  });
});




