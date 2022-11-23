package dev.a.a01.userJoin.impl;

import dev.a.a01.userJoin.UserJoinService;
import dev.a.a01.userJoin.UserJoinVo;
import dev.a.a01.userJoin.mappers.UserJoinDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;


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

}
