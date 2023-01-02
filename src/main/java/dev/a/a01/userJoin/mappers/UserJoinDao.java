package dev.a.a01.userJoin.mappers;

import dev.a.a01.userJoin.UserJoinVo;
import org.apache.ibatis.annotations.Mapper;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

@Mapper
public interface UserJoinDao {
    int checkDuplicationUserId(UserJoinVo vo)throws SQLException;
    HashMap userJoinSave(UserJoinVo vo)throws  SQLException;

    //유저 중복확인
    HashMap findUserSn(UserJoinVo vo)throws SQLException;

    //유저 순번 생성
    UserJoinVo userSelect(UserJoinVo vo)throws SQLException;

    int userInsert(UserJoinVo vo);
}