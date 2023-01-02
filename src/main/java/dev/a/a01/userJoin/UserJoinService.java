package dev.a.a01.userJoin;

import java.sql.SQLException;

public interface UserJoinService {
    int checkDuplicationUserId(UserJoinVo vo)throws SQLException;

    int userJoinSave (UserJoinVo vo)throws  SQLException;

    String userInsert(UserJoinVo vo) throws SQLException;
}
