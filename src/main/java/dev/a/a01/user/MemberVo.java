package dev.a.a01.user;


import lombok.Data;

@Data
public class MemberVo {

    private String userId, userPw, userAddr ,userRealAddr, userPhone, userBirth, userEmail ;
    public static final int SUCCESS = 1
                            ,ERROR = 0
                            ,EMPTY_NULL = -1
                            ,DONT_PWD = -2;
}
