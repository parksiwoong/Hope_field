package dev.a.a01.userJoin;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("UserJoinVo")
public class UserJoinVo {
    private String groupNm;         //유저그룹명
    private String userSn;          //사용자순번
    private String userId;          //사용자 아이디
    private String userPwd;         //사용자 비밀번호
    private String userNm;          // 사용자이름
    private String userMpno;        // 휴대번호
    private String userBirth;       // 생년월일
    private String sidoCd;          // 시도코드
    private String sigunguCd;       // 시군구코드
    private String selAgreCfrmYn;   // 개인정보(선택) 수집 및 이용약관 동의여부
    private String realAddr;        // 주소
    private String realAddrDtl;     // 상세주소
    private String wiAddrUpdtDt;    // 최종수정일
    private String addrUpdtDt;      // 주소수정일


}
