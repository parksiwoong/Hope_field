package dev.a.a01.userJoin.impl;

import dev.a.a01.userJoin.UserJoinService;
import dev.a.a01.userJoin.UserJoinVo;
import dev.a.a01.userJoin.mappers.UserJoinDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.sql.SQLException;
import java.util.HashMap;


@Service(value = "userJoinService")
public class UserJoinServiceImpl implements UserJoinService {
    private final UserJoinDao dao;

    @Autowired
    public UserJoinServiceImpl(UserJoinDao dao){
        this.dao = dao;
    }
//    public List<UserJoinVo> userJoinService(UserJoinVo vo) {
//
//        return dao.userJoinDao();
//    }

    @Override
    public int checkDuplicationUserId(UserJoinVo vo) throws SQLException {
        return dao.checkDuplicationUserId(vo);
    }
    /** 사용자 정보 저장 */
    @Override
    public int userJoinSave(UserJoinVo vo) throws SQLException {
        String resultSn = "";

        //중복 가입 확인
        HashMap hm = dao.findUserSn(vo);
//                dao.userJoinSave(vo);

        return 0;
    }
    public String userInsert(UserJoinVo vo) throws SQLException{
        UserJoinVo voSn = new UserJoinVo();

        System.out.println("jade - vo2: " + vo);
        //스퀸스 번호 호출 모듈
        vo.setGroupNm("SN");
        voSn = vo;

        System.out.println("jade - dao: " + dao.userSelect(vo).getUserSn());

      //  return dao.userSelect(vo).toString();
        vo.setUserSn(dao.userSelect(vo).getUserSn());
        //vo = dao.userSelect(vo);
        System.out.println(vo + "<-@@@@@@@@@");

        //중복 가입 확인
//        HashMap duplmap = dao.findUserSn(vo);
//        if(duplmap != null && !duplmap.get("userSn").equals("")){
//            return String.valueOf(duplmap.get("userSn"));
//        }
        //중복 가입 확인 END

        //비밀번호 암호화
//        if(!StringUtils.isEmpty(vo.getUserPwd())){
//            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//            vo.setUserPwd(encoder.encode(vo.getUserPwd()));
//        }
        //사용자 정보 저장
        dao.userInsert(vo);
      //  String userSn = vo.getUserSn();
        return null;
    }
}
