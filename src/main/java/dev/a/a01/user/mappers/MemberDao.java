package dev.a.a01.user.mappers;

import dev.a.a01.user.MemberVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface MemberDao {
    List<HashMap> test (MemberVo vo)throws Exception;
}
