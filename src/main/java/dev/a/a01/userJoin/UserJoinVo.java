package dev.a.a01.userJoin;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("UserJoinVo")
public class UserJoinVo {
    private String userId;
    private String userMpno;        // 휴대번호
    private String sidoCd;          // 시도코드
    private String sigunguCd;       // 시군구코드
    private String selAgreCfrmYn;   //개인정보(선택) 수집 및 이용약관 동의여부
    private String realAddr;        // 주소
    private String realAddrDtl;     // 상세주소
}
