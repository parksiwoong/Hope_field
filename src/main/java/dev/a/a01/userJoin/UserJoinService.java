package dev.a.a01.userJoin;

import java.sql.SQLException;

public interface UserJoinService {
    public int checkDuplicationUserId(UserJoinVo vo)throws SQLException;
}
