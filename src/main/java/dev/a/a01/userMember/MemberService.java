package dev.a.a01.userMember;


import java.util.HashMap;
import java.util.List;

public interface MemberService {
    List<HashMap> test (MemberVo vo)throws Exception;

    HashMap<String, String> loginCheckCompare(MemberVo vo);

    //HashMap loignIdCheck()throws Exception;

 //   HashMap memberSetInsert(MemberVo vo)throws Exception;
}
