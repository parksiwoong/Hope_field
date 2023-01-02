<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>회원가입</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/dev/a/a01/member.js"></script>
    </head>
    <body>
        <form method="POST" > <%--action="/userJoin/memberSave"--%>
                <!-- 아이디 -->
                <div class="form-group">
                      <label for="userId">아이디</label>
                      <input type="text" class="form-control" id="userId" name="userId" placeholder="ID" required>
                      <div class="check_font" id="id_check"></div>
                    <button type="button" id="idChack">중복확인</button>
                </div>
                <!-- 비밀번호 -->
                <div class="form-group">
                      <label for="userPwd">비밀번호</label>
                      <input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="PASSWORD" required>
                      <div class="check_font" id="pw_check"></div>
                </div>
                <!-- 비밀번호 재확인 -->
                <div class="form-group">
                      <label for="userPwd2">비밀번호 확인</label>
                      <input type="password" class="form-control" id="userPwd2" name="userPwd2" placeholder="Confirm Password" required>
                      <div class="check_font" id="pw2_check"></div>
                </div>
                <!-- 이름 -->
                <div class="form-group">
                      <label for="userNm">이름</label>
                      <input type="text" class="form-control" id="userNm" name="userNm" placeholder="Name" required>
                      <div class="check_font" id="name_check"></div>
                </div>
                <!-- 생년월일 -->
                <div class="form-group required">
                      <label for="userBirth">생년월일</label>
                      <input type="text" class="form-control" id="userBirth" name="userBirth" placeholder="ex) 19990415" required>
                      <div class="check_font" id="birth_check"></div>
                </div>
                <!-- 본인확인 이메일 -->
                <div class="form-group">
                      <label for="userEmail">이메일</label>
                      <input type="text" class="form-control" name="userEmail" id="userEmail" placeholder="E-mail" required>
                      <!-- <input type="text" style="margin-top: 5px;"class="email_form" name="email_confirm" id="email_confirm" placeholder="인증번호를 입력해주세요!" required>
                          <button type="button" class="btn btn-outline-danger btn-sm px-3" onclick="confirm_email()">
                              <i class="fa fa-envelope"></i>&nbsp;인증
                          </button>&nbsp;
                          <button type="button" class="btn btn-outline-info btn-sm px-3">
                              <i class="fa fa-envelope"></i>&nbsp;확인
                          </button>&nbsp; -->
                    <div class="check_font" id="email_check"></div>
                </div>
                <!-- 휴대전화 -->
                <div class="form-group">
                      <label for="userMpno">휴대전화 ('-' 없이 번호만 입력해주세요)</label>
                      <input type="text" class="form-control" id="userMpno" name="userMpno" placeholder="Phone Number" required>
                      <div class="check_font" id="phone_check"></div>
                </div>
                <div class="reg_button">
                      <a class="btn btn-danger px-3" href="${pageContext.request.contextPath}">
                            <i class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소하기
                      </a>&emsp;&emsp;
                      <button type="submit" class="btn btn-primary px-3" id="regSbmit">
                            <i class="fa fa-heart pr-2" aria-hidden="true"></i>가입하기
                      </button>
                </div>
        </form>
    </body>
</html>
