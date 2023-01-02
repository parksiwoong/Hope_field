<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
    <html lang="en">
        <head>
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/a/SignIn.css">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">

            <script src="http://code.jquery.com/jquery-latest.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/dev/a/a01/member.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/dev/common/common.js"></script>
            <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/dev/a/a01/SignIn.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/dev/common/custom.js"></script>
            <!--jqeury라이브러리-->

            <title>Sign in</title>
        </head>
        <body>
            <header class="clearfix">
                <div class="title">
                    <h1><a href="${pageContext.request.contextPath}/index">Hope<br>Field</a></h1>
                </div>
                <div class="top-menu">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/member/userLogin">Login</a></li>
                        <li><a href="${pageContext.request.contextPath}/userJoin/memberGetInsert">Sign in</a></li>
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
                <div class="wrap">
                    <div class="container">
                        <div class="title">
                            <h2>회원가입</h2>
                        </div>
                            <p class="required"><img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수">필수입력사항 </p>

                    </div>
                    <colgroup>
                        <col style="width: 150px;">
                        <col style="width: auto;">
                    </colgroup>
                    <form id="joinForm" name="joinForm">
                        <tbody>
                            <div class="table-type">
                                <table >
                                    <colgroup class>
                                        <col style="width:150px;">
                                        <col style="width:auto;">
                                    </colgroup>
                                    <tr>
                                        <th class="row">아이디
                                            <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수">
                                        </th>
                                        <td>
                                            <input type="text"  id="userId" name="userId" class="member_id" placeholder="ID">
                                            <a href="#" class="idBtn" id="idChack">중복확인</a>
                                            <span class="idMsg">(영문소문자/숫자, 4~16자)</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="row">비밀번호
                                            <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수">
                                        </th>
                                        <td>
                                            <input type="password" name="userPwd" class="password" placeholder="Password">
                                            <span class="idMsg">(영문 대소문자/숫자 4자~16자)</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="row">
                                            비밀번호 확인
                                            <img src="${pageContext.request.contextPath}/img/ico_required.gif"alt="필수">
                                        </th>
                                        <td>
                                            <input type="password" name="userPwd2" class="user_passwd_confirm" placeholder="Confirm Password">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="row">이름
                                            <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수">
                                        </th>
                                        <td>
                                            <input type="text" name="userNm" class="name" placeholder="Name">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="row">주소
                                            <img src="${pageContext.request.contextPath}/img/ico_required.gif" alt="필수">
                                        </th>
                                        <td>
                                            <%--주소팝업--%>
    <%--                                        <div id="real" style="display: none; border: 1px solid; width: 100%; height:300px; margin: 5px 0; position: relative">--%>
    <%--                                            <img src="https://t1.daumcdn.net/postcode/resource/images/close.png"--%>
    <%--                                                 style="cursor:pointer;position: absolute; right:0px; top:-1px; z-index:1"--%>
    <%--                                                 onclick="fn_foldRealPostcode('real')" alt="접기 버튼">--%>
    <%--                                        </div>--%>
                                            <input type="text" id="postCode" onclick="daumPostcode()" placeholder="예)12345" value="${data.realAddr}">
                                            <input type="button"class="postBtn"  onclick="daumPostcode()"  value="우편번호"><br>
                                            <input type="text" id="realAddr" name="realAddr"  class="addr1" value="${data.realAddr}"> 기본주소<br>
                                            <input type="text" id="realAddrDtl" name="realAddrDtl"  class="addr2" value="${data.realAddDtl}"> 나머지주소 (선택입력가능)
                                            <input type="hidden" id="realCode" name="realCode">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">일반전화</th>
                                        <td>
                                            <select class="phone1" name="phone[]">
                                                <option value="02">02</option>
                                                <option value="031">031</option>
                                                <option value="032">032</option>
                                                <option value="033">033</option>
                                                <option value="041">041</option>
                                                <option value="042">042</option>
                                                <option value="043">043</option>
                                                <option value="044">044</option>
                                                <option value="051">051</option>
                                                <option value="052">052</option>
                                                <option value="053">053</option>
                                                <option value="054">054</option>
                                                <option value="055">055</option>
                                                <option value="061">061</option>
                                                <option value="062">062</option>
                                                <option value="063">063</option>
                                                <option value="064">064</option>
                                                <option value="0502">0502</option>
                                                <option value="0503">0503</option>
                                                <option value="0504">0504</option>
                                                <option value="0505">0505</option>
                                                <option value="0506">0506</option>
                                                <option value="0507">0507</option>
                                                <option value="070">070</option>
                                                <option value="010">010</option>
                                                <option value="011">011</option>
                                                <option value="016">016</option>
                                                <option value="017">017</option>
                                                <option value="018">018</option>
                                                <option value="019">019</option>
                                                <option value="0508">0508</option>
                                            </select>
                                            <input class="phone2" name="phone[]" type="text"/>
                                            <input class="phone3" name="phone[]" type="text"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">휴대전화</th>
                                        <td>
<%--                                            <button onclick="fn_checkPhone()">확인</button>--%>
                                            <select class="mobile1" name="mobile[]" id="mobile1">
                                                <option value="010">010</option>인
                                                <option value="011">011</option>
                                                <option value="016">016</option>
                                                <option value="017">017</option>
                                                <option value="018">018</option>
                                                <option value="019">019</option>
                                            </select>-
                                            <input class="mobile2" name="mobile[]" type="text" id="mobile2"/>-
                                            <input class="mobile3" name="mobile[]" type="text" id="mobile3"/>
                                            <input type="hidden" id="userMpno">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">SMS 수신여부
                                            <img src="${pageContext.request.contextPath}/img/ico_required.gif"
                                                 alt="필수">
                                        </th>
                                        <td><input class="is_sms" name="is_sms" value="T" type="checkbox"/>
                                            <label for=is_sms>동의함</label>
                                            <p>해당사이트에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">이메일
                                            <img src="${pageContext.request.contextPath}/img/ico_required.gif"
                                                 alt="필수">
                                        </th>
                                        <td><input class="email1" name="email1" type="text"/>
                                            <span class="emailMsg"></span>
                                        </td>
                                    </tr>
                                    <tr class="displaynone">
                                        <th scope="row">이메일 수신여부
                                            <img src="${pageContext.request.contextPath}/img/ico_required.gif"
                                                 alt="필수"/>
                                        </th>
                                        <td><input name="is_news_mail" class="ec-base-chk" value="T" type="checkbox"/>
                                            <label for=is_news_mail0>동의함</label>
                                            <p>해당사이트에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </tbody>
                    </form>
                    <div class="bottom-button">
                        <button type="submit" class="join">회원가입</button>
                        <button type="submit" class="cancel">회원가입 취소</button>
                    </div>
                </div>
            </section>
        </body>
    </html>