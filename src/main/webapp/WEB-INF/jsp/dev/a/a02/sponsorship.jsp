<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--jqeury라이브러리-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/a/sponsorship.css">
        <script src="${pageContext.request.contextPath}/js/dev/a/a02/sponsorship.js"></script>
        <title>sponsorship</title>
    </head>
    <body>
        <header class="clearfix">
            <div class="title">
                <h1><a href="${pageContext.request.contextPath}/index">Hope<br>
                    Field</a></h1>
            </div>
            <div class="top-menu">
                <ul>
                    <li><a href="#">Login</a></li>
                    <li><a href="#">Sign in</a></li>
                    <li><a href="#">My page</a></li>
                </ul>
            </div>
            <ul class="gnb">
                <li>
                    <a href="#">후원하기</a>
                    <ul class="sub">
                        <li><a href="#">정기후원</a></li>
                        <li><a href="#">일시후원</a></li>
                        <li><a href="#">국내후원</a></li>
                        <li><a href="#">해외후원</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">스토리</a>
                    <ul class="sub">
                        <li><a href="#">나눔후기</a></li>
                        <li><a href="#">결과보고</a></li>
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">뉴스레터</a></li>
                        <li><a href="#">스토리</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">기관소개</a>
                    <ul class="sub">
                        <li><a href="#">희망밭소개</a></li>
                        <li><a href="#">걸어온길</a></li>
                        <li><a href="#">CI 및 슬로건</a></li>
                        <li><a href="#">투명경영</a></li>
                        <li><a href="#">오시는길</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">사업안내</a>
                    <ul class="sub">
                        <li><a href="#">국내사업</a></li>
                        <li><a href="#">국제사업</a></li>
                        <li><a href="#">아동권리</a></li>
                        <li><a href="#">사회적경제사업</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">나의후원</a>
                    <ul class="sub">
                        <li><a href="#">나의후원정보</a></li>
                        <li><a href="#">온라인출력</a></li>
                        <li><a href="#">나의 문의함</a></li>
                        <li><a href="#">개인정보확인/변경</a></li>
                    </ul>
                </li>
            </ul>
        </header>

        <section>
            <div class="container">
                <div class="step-box">
                    <div class="step active">
                        <label></label><br>
                        <span>01</span>
                        <h3>후원 방법</h3>
                    </div>
                    <div class="step">
                        <label></label><br>
                        <span>02</span>
                        <h3>후원자 정보</h3>
                    </div>
                    <div class="step">
                        <label></label><br>
                        <span>03</span>
                        <h3>결제 정보</h3>
                    </div>
                </div>

                <form class="toggle-box">
                    <h2>후원방법</h2>
                    <div class="btn">
                            <button type="button" class="giftLevel" id="giftLevel1" onclick="giftLevel('1')">
                                <span>정기후원</span>
                            </button>
                            <button type="button"  class="giftLevel" id="giftLevel2" onclick="giftLevel('2')">
                                <span>일시후원</span>
                            </button>
                    </div>
                    <div class="FormGroup-1">
                        <h2>후원분야</h2>
                        <select class="supportIndex">
                            <option value="">후원 분야 선택</option>
                            <option value="">국내 아동·청소년 지원</option>
                            <option value="">취약계층 생리대 지원</option>
                            <option value="">보호종료아동 지원</option>
                            <option value="">결식아동 지원</option>
                            <option value="">학대피해아동 지원</option>
                            <option value="">국내 장애 및 환아 지원</option>
                            <option value="">보육원 지원</option>
                            <option value="">미혼·한부모 지원</option>
                            <option value="">해외결연아동사업</option>
                            <option value="">해외 식수지원사업</option>
                            <option value="">해외 교육지원사업</option>
                            <option value="">해외 지역개발사업</option>
                            <option value="">재난구호지원사업</option>
                            <option value="">희망학교지원사업</option>
                        </select>
                    </div>

                    <div class="FormGroup-2">
                        <h2>후원금액(원)</h2>
                        <div class="InputRadio">
                            <div class="radio-box1">
                                <label class="RadioLabel" name="test">
                                    <input type="radio" name="gift" class="InputRadio_RadioTabInput" value="30,000"/>
                                    <div class="RadioTabButton">
                                        <span class="InputRadio__RadioTabText-sc">30,000</span>
                                    </div>
                                </label>
                                <label class="RadioLabel" name="test">
                                    <input type="radio" name="gift" class="InputRadio_RadioTabInput" value="50,000" />
                                    <div class="RadioTabButton">
                                        <span class="RadioTabText">50,000</span>
                                    </div>
                                </label>
                                <label class="RadioLabel" name="test">
                                    <input type="radio" name="gift" class="InputRadio_RadioTabInput" value="100,000" />
                                    <div class="RadioTabButton">
                                        <span class="InputRadio__RadioTabText-sc">100,000</span>
                                    </div>
                                </label>
                            </div>

                            <div class="ridio-box2">
                                <label class="RadioLabel" name="test">
                                    <input type="radio" name="gift" class="InputRadio_RadioTabInput" value="200,000"/>
                                    <div class="RadioTabButton">
                                        <span class="InputRadio__RadioTabText-sc">200,000</span>
                                    </div>
                                </label>
                                <label class="RadioLabel">
                                    <input type="radio" name="gift" class="InputRadio_RadioTabInput" value="300,000"/>
                                    <div class="RadioTabButton">
                                        <span class="InputRadio__RadioTabText-sc">300,000</span>
                                    </div>
                                </label>
                                <!-- <input class="textInput" type="text" placeholder="금액 직접 입력" value inputmode="numeric">value inputmode="numeric"->사용자가 요소나 요소의 콘텐츠 편집 때 입력 가능한 데이터 타입 힌트 제공하는 열거형 속성.-->
                                <label class="RadioLabel">
                                    <input type="radio" name="gift" class="InputRadio_RadioTabInput" value="500,000"/>
                                    <div class="RadioTabButton">
                                        <span class="InputRadio__RadioTabText-sc">500,000</span>
                                    </div>
                                </label>
<%--                                <input class='number' type="text" onkeyup='printName()' placeholder="금액 직접 입력"/>--%>
                            </div>

                            <div class="FormTotal">
                                <h2>총 후원금액</h2>
                                <div class='result'><p>원</p></div>
                            </div>
                            <button type="button" class="TotalButton" onclick="location.href='${pageContext.request.contextPath}/spon/sponsorshipmen'">NEXT</button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>
