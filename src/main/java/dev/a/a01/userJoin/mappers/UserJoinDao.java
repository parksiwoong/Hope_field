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

    HashMap findUserSn(UserJoinVo vo)throws SQLException;
}