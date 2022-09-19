package dev.a.a01.userJoin.mappers;

import dev.a.a01.userJoin.UserJoinVo;
import org.apache.ibatis.annotations.Mapper;

import java.sql.SQLException;
import java.util.List;

@Mapper
public interface UserJoinDao {
    List<UserJoinVo> userJoinDao();

    int checkDuplicationUserId(UserJoinVo vo)throws SQLException;
}
