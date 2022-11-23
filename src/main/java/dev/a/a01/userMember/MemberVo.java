package dev.a.a01.userMember;


import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("MemberVo")
public class MemberVo {

    private String userId, userPw, userAddr ,userRealAddr, userPhone, userBirth, userEmail ;
    public static final int SUCCESS = 1
                            ,ERROR = 0
                            ,EMPTY_NULL = -1
                            ,DONT_PWD = -2;
}
// <select id="loginIdCheck" resultType="HashMap"> /* 아이디 체크 */
//        SELECT * FROM public.tb_cmmn_bbs
//</select>