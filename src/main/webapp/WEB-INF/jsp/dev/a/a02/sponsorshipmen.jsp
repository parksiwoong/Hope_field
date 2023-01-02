<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--jqeury라이브러리-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/a/sponsorhumen.css">
    <script src="${pageContext.request.contextPath}/js/dev/a/a02/sponsorhumen.js"></script>
    <title>sponsorhumen</title>
  </head>
  <body>
    <header class="clearfix">
      <div class="title">
        <h1><a href="${pageContext.request.contextPath}/index">Hope<br>
          Field</a></h1>
      </div>
      <div class="top-menu">
        <ul>
          <li><a href="login.html" target="_blank">Login</a></li>
          <li><a href="SignIn.html" target="_blank">Sign in</a></li>
          <li><a href="#">My page</a></li>
        </ul>
      </div>
      <ul class="gnb">
        <li>
          <a href="#">후원하기</a>
          <ul class="sub">
            <li><a href="sponsorship.html" target="_blank">정기후원</a></li>
            <li><a href="sponsorship.html" target="_blank">일시후원</a></li>
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

    <section class="container">
      <div class="step-box">
        <div class="step">
          <label></label><br>
          <span>01</span>
          <h3>후원 방법</h3>
        </div>
        <div class="step active">
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

      <form>
        <input type="hidden" id="selectFinal" value="" />
        <h2>후원자 구분</h2>
        <div class="sponsor">
          <div class="radio-box">
            <input type="radio" name="selectFinalRadio" onclick="change_div('1')" checked/>
            <label for="" class="member1">개인</label>
          </div>
          <div class="radio-box">
            <input type="radio" name="selectFinalRadio" onclick="change_div('2')" value="select_2"/>
            <label for="" class="member1">기업</label>
          </div>
          <div class="radio-box">
            <input type="radio" name="selectFinalRadio" onclick="change_div('3')" value="select_3"/>
            <label for="" class="member1">단체</label>
          </div>
        </div>
        <div id="numberPage">
          <div class="member" id="section_1">
            <div class="box">
              <span>성명 *</span><br>
              <input type="text" class="name" placeholder="이름을 입력해주세요.">
            </div>
            <div class="box">
              <span>생년월일 *</span><br>
              <input type="text" class="life" placeholder="주민등록번호 앞 6자">
            </div>
            <div class="mobile">
              <span>연락처 *</span><br>
              <select>
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
              </select>
              <input type="text" placeholder="'-'을 제외한 나머지">
            </div>
            <div class="add">
              <span>주소 *</span><br>
              <input type="text" class="adds1">
              <a href="#">검색</a><br>
              <input type="text" class="adds2"> 기본주소<br>
              <input type="text" class="adds2"> 나머지 주소
            </div>
            <div class="email-box">
              <span>이메일 *</span><br>
              <div class="wrap">
                <input type="text" class="email1">
                <i>@</i>
                <input type="text" class="email1">
                <select>
                  <option value="" selected>직접입력</option>
                  <option value="naver.com">naver.com</option>
                  <option value="hanmail.net">hanmail.net</option>
                  <option value="hotmail.com">hotmail.com</option>
                  <option value="nate.com">nate.com</option>
                  <option value="yahoo.co.kr">yahoo.co.kr</option>
                  <option value="empas.com">empas.com</option>
                  <option value="dreamwiz.com">dreamwiz.com</option>
                  <option value="freechal.com">freechal.com</option>
                  <option value="lycos.co.kr">lycos.co.kr</option>
                  <option value="korea.com">korea.com</option>
                  <option value="gmail.com">gmail.com</option>
                  <option value="hanmir.com">hanmir.com</option>
                  <option value="paran.com">paran.com</option>
                </select>
              </div>
            </div>
            <div class="bill">
              <span>기부금 영수증 발급여부(선택)</span><br>
              <div class="wrap">
                <span>선택</span>
                <input type="checkbox">
              </div>
              <input type="text" placeholder="주민등록번호('-'제외하고 숫자만 입력)">
            </div>
            <button type="submit" class="next-button">NEXT</button>
          </div>
          <div class="member" id="section_2">
            <div class="box">
              <span>기업명 *</span><br>
              <input type="text" class="name" placeholder="기업명을 입력해주세요.">
            </div>
            <div class="box">
              <span>대표자명 *</span><br>
              <input type="text" class="life" placeholder="대표자명을 입력해주세요.">
            </div>
            <div class="box">
              <span>사업자등록번호 *</span><br>
              <input type="text" class="life" placeholder="'-'제외하고 숫자만 입력">
            </div>
            <div class="mobile">
              <span>연락처 *</span><br>
              <select>
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
              </select>
              <input type="text" placeholder="'-'을 제외한 나머지">
            </div>
            <div class="add">
              <span>주소 *</span><br>
              <input type="text" class="adds1">
              <a href="#">검색</a><br>
              <input type="text" class="adds2"> 기본주소<br>
              <input type="text" class="adds2"> 나머지 주소
            </div>
            <div class="email-box">
              <span>이메일 *</span><br>
              <div class="wrap">
                <input type="text" class="email1">
                <i>@</i>
                <input type="text" class="email1">
                <select>
                  <option value="" selected>직접입력</option>
                  <option value="naver.com">naver.com</option>
                  <option value="hanmail.net">hanmail.net</option>
                  <option value="hotmail.com">hotmail.com</option>
                  <option value="nate.com">nate.com</option>
                  <option value="yahoo.co.kr">yahoo.co.kr</option>
                  <option value="empas.com">empas.com</option>
                  <option value="dreamwiz.com">dreamwiz.com</option>
                  <option value="freechal.com">freechal.com</option>
                  <option value="lycos.co.kr">lycos.co.kr</option>
                  <option value="korea.com">korea.com</option>
                  <option value="gmail.com">gmail.com</option>
                  <option value="hanmir.com">hanmir.com</option>
                  <option value="paran.com">paran.com</option>
                </select>
              </div>
            </div>
            <button type="submit" class="next-button">NEXT</button>
          </div>

          <div class="member" id="section_3">
            <div class="box">
              <span>단체명 *</span><br>
              <input type="text" class="name" placeholder="단체명을 입력해주세요.">
            </div>
            <div class="box">
              <span>대표자명 *</span><br>
              <input type="text" class="life" placeholder="대표자명을 입력해주세요.">
            </div>
            <div class="box">
              <span>사업자등록번호 *</span><br>
              <input type="text" class="life" placeholder="'-'제외하고 숫자만 입력">
            </div>
            <div class="mobile">
              <span>연락처 *</span><br>
              <select>
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
              </select>
              <input type="text" placeholder="'-'을 제외한 나머지">
            </div>
            <div class="add">
              <span>주소 *</span><br>
              <input type="text" class="adds1">
              <a href="#">검색</a><br>
              <input type="text" class="adds2"> 기본주소<br>
              <input type="text" class="adds2"> 나머지 주소
            </div>
            <div class="email-box">
              <span>이메일 *</span><br>
              <div class="wrap">
                <input type="text" class="email1">
                <i>@</i>
                <input type="text" class="email1">
                <select>
                  <option value="" selected>직접입력</option>
                  <option value="naver.com">naver.com</option>
                  <option value="hanmail.net">hanmail.net</option>
                  <option value="hotmail.com">hotmail.com</option>
                  <option value="nate.com">nate.com</option>
                  <option value="yahoo.co.kr">yahoo.co.kr</option>
                  <option value="empas.com">empas.com</option>
                  <option value="dreamwiz.com">dreamwiz.com</option>
                  <option value="freechal.com">freechal.com</option>
                  <option value="lycos.co.kr">lycos.co.kr</option>
                  <option value="korea.com">korea.com</option>
                  <option value="gmail.com">gmail.com</option>
                  <option value="hanmir.com">hanmir.com</option>
                  <option value="paran.com">paran.com</option>
                </select>
              </div>
            </div>
            <button type="submit" class="next-button">NEXT</button>
          </div>
        </div>

      </form>
    </section>
  </body>
</html>