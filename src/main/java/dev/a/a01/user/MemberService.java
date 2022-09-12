package dev.a.a01.user;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface MemberService {
    List<HashMap> test (MemberVo vo)throws Exception;

    HashMap loignIdCheck()throws Exception;
}
