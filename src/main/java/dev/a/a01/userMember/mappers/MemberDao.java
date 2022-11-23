package dev.a.a01.userMember.mappers;

import dev.a.a01.userMember.MemberVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface MemberDao {
    List<HashMap> test (MemberVo vo)throws Exception;

  //  HashMap loginIdCheck()throws Exception;

   // HashMap MemberSetInsert(MemberVo vo)throws Exception;
}
