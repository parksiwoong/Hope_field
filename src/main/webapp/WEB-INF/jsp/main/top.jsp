<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" type="text/css" href="/css/main/default.css">
    <link rel="stylesheet" type="text/css" href="/css/main/style.css">
    <link rel="stylesheet" type="text/css" href="/css/main/detail.css">
    <link rel = "preconnect"href = "https://fonts.gstatic.com">
    <!--    <link href = "https://fonts.googleapis.com/css2? family = Source + Sans + Pro : wght @ 200 & display = swap "rel ="stylesheet ">-->
    <script src="main.js" defer></script>
    <title>Nav bar</title>
    <!--    <script src="https://kit.fontawesome.com/dae0967927.js" crossorigin="anonymous"></script>-->
    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        $(document).ready(function(){

            $("#open_login").on('click',function(){
                $("#login").show();
                $(".dim").show();
            });
            $("#login .close").on('click',function(){
                $(this).parent().hide();
                $(".dim").hide();
            });

            $("#open_SignUp").on('click',function(){
                $("#SignUp").show();
                $(".dim").show();
                $("#login").hide();


            });
            $("#SignUp .close").on('click',function(){
                $(this).parent().hide();
                $(".dim").hide();
            });

        });
    </script>
</head>
<body>
<nav class="navbar">
    <div class="navbar_logo">
        <a><img style=" width: 90px" src="/images/main/new_logo.png">Brother</a>
    </div>
    <ul class="navbar_menu">
        <li><a href="">home</a></li>
        <li><a href="">guest</a></li>
        <li><a href="">Board</a></li>
        <li><a href="#" class="open" id="open_login" >login</a></li>
    </ul>
    <div class="navbar_icons">
        <form class="navbar_icons">
            <label for="header_search_query" class="sr-only">Search Icons:</label>
            <input id="header_search_query" type="search" name="header_search_query" value="" placeholder="Search icons..." class="input-reset color-inherit input-focus all-animate br-pill ph4 sans-serif fw6 header-search-input ba bw1 bg-white-10 b--transparent">
        </form>
        <button><li><i class="fas fa-search"></i></li></button>
    </div>
    <a href="#" class="navbar_toogleBtn">
        <input id="header_search" type="search" name="header_search_query" value="" placeholder="Search icons..." class="input-reset color-inherit input-focus all-animate br-pill ph4 sans-serif header-search-input ba bw1 bg-gray1 b--gray1">
        <i class="fas fa-bars"></i>
    </a>
</nav>


<form>
    <div class="popup" id="SignUp">
        <h2>회원가입</h2>
        <div class="con">
            <table class="type1">

                <colgroup>
                    <col style="width: 111px">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th><label for="txt2_1">아이디</label><span>*<em class="hide">필수입력</em></span></th>
                    <td><input type="text" id="txt2_1" placeholder="이름을 입력해 주세요."></td>
                </tr>
                <tr>
                    <th><label for="txt2_2">비밀번호</label><span>*<em class="hide">필수입력</em></span></th>
                    <td><input type="tel" id="txt2_2" placeholder="쉽게 입력해주세요."></td>
                </tr>
                <tr>
                    <th><label for="txt2_3">비밀번호재입력</label><span>*<em class="hide">필수입력</em></span></th>
                    <td><input type="tel" id="txt2_3" placeholder="쉽게 입력해주세요."></td>
                </tr>
                <tr>
                    <th><label for="txt2_4">성함</label><span>*<em class="hide">필수입력</em></span></th>
                    <td><input type="tel" id="txt2_4" placeholder="성함을 입력해주세요."></td>
                </tr>

                </tbody>
            </table>
            <div class="agree">
                <label >간편회원가입</label>
                <a href="#a">카카오</a><a href="#a">네이버</a><a href="#a">구글</a>
            </div>
            <div class="agree">
            <input type="checkbox" id="chk1_5"><label for="chk1_5"><span>[필수]</span>개인정보 수집 및 이용 동의</label>
            <a href="#a" class="view">전문보기</a>
        </div>
        </div>
        <div class="txt_center">
            <a href="#a" class="btn_type1">회원가입</a>
        </div>
        <a href="#a" class="close">닫기</a>
    </div>
    <div class="dim"></div>
</form>



<form>
    <div class="popup" id="login">
        <h2>로그인</h2>
        <div class="con">
            <table class="type1">

                <colgroup>
                    <col style="width: 111px">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th><label for="txt1">아이디</label><span>*<em class="hide">필수입력</em></span></th>
                    <td><input type="text" id="txt1" placeholder="아이디를 입력해주세요"></td>
                </tr>
                <tr>
                    <th><label for="txt2">비밀번호</label><span>*<em class="hide">필수입력</em></span></th>
                    <td><input type="tel" id="txt2" placeholder="비밀번호를 입력해주세요."></td>
                </tr>


                <tr  class="save"><!--style="text-align: center ;"-->
                    <th>저장하시겠습니까?</th>
                    <td>
                        <ul>
                            <li><input type="checkbox" id="chk2_1"><label for="chk2_1">아이디저장</label></li>
                            <li><input type="checkbox" id="chk2_2"><label for="chk2_2">비밀번호저장</label></li>
                        </ul>
                    </td>
                </tr>

                </tbody>
            </table>
            <div class="agree" style="text-align: center">
                <!--<input type="checkbox" id="chk1_4"><label for="chk1_4"><span>[필수]</span>개인정보 수집 및 이용 동의</label>-->
                <i class="fab fa-google">구글로그인사진</i>
                <i class="fab fa-google">카카오로그인사진</i>
                <!--<a href="#a" class="view">전문보기</a>-->
            </div>
        </div>
        <div class="txt_center">
            <a href="#a" class="btn_type1" style="background-color: #666666">로그인</a>
            <a href="#a" class="btn_type1" id="open_SignUp">회원가입</a>
        </div>
        <a href="#a" class="close">닫기</a>
    </div>
    <div class="dim"></div>
</form>





<div class="container">
