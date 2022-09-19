package dev.a.a01.userJoin.impl;

import dev.a.a01.user.mappers.MemberDao;
import dev.a.a01.userJoin.UserJoinService;
import dev.a.a01.userJoin.UserJoinVo;
import dev.a.a01.userJoin.mappers.UserJoinDao;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.type.Alias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;



@Service(value = "userJoinService")
public class UserJoinServiceImpl {
    private final UserJoinDao dao;

    @Autowired
    public UserJoinServiceImpl(UserJoinDao dao){
        this.dao = dao;
    }
//    public List<UserJoinVo> userJoinService(UserJoinVo vo) {
//
//        return dao.userJoinDao();
//    }

    public int checkDuplicationUserId(UserJoinVo vo) throws SQLException {
        return dao.checkDuplicationUserId(vo);
    }
}
