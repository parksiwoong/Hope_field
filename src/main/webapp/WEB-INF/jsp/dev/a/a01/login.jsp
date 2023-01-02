<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/946d94826f.js" crossorigin="anonymous"></script>
        <!--jqeury라이브러리-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath}/css/a/login_style.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/dev/common/custom.js"></script>

    <%--    <$=request.getContextPath()%>/resources/ --%>
        <title>login</title>
    </head>
    <body>
        <header>
            <h1><a href="${pageContext.request.contextPath}/index">Hope<br>Field</a></h1>
        </header>
        <div id="conteiner">
            <div class="FormGroup">
                <div class="bg">
                    <img src="${pageContext.request.contextPath}/img/login_bg.jpg" alt="">
                </div>
                <div class="wrap">
                    <div class="login_tit">
                        <h2>Login</h2>
                        <hr class="top-Row-line">
                    </div>
                    <div class="login-form">
                        <input type="text" placeholder="Id">
                        <input type="password" placeholder="password">
                    </div>
                    <div class="login-check">
                        <input type="checkbox" id="check1">
                        <label for="check1"></label>
                        <a href="#" class="remember">아이디 저장</a>
                        <a href="#" class="search">아이디/비밀번호 찾기</a>
                    </div>
                    <div class="btn-box">
                        <button type="submit">로그인</button>
                        <button type="submit">회원가입</button>
                    </div>
                    <hr class="bottom-Row-line">
                    <h3>SNS 계정으로 간편 로그인 하기</h3>
                    <div class="sns-icon">
                        <div class="icon">
                            <img src="${pageContext.request.contextPath}/img/naver_logo.png" alt="naverlogo">
                            <a href="#">네이버</a>
                        </div>
                        <div class="icon">
                            <img src="${pageContext.request.contextPath}/img/kakao_logo.png" alt="kakaologo">
                            <a href="#">카카오</a>
                        </div>
                        <div class="icon">
                            <img src="${pageContext.request.contextPath}/img/facebook_logo.png" alt="facebooklogo">
                            <a href="#">페이스북</a>
                        </div>
                        <div class="icon">
                            <img src="${pageContext.request.contextPath}/img/google_logo.png" alt="googlelogo">
                            <a href="#">구글</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>