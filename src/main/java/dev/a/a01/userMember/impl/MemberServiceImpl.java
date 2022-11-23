package dev.a.a01.userMember.impl;

import dev.a.a01.userMember.MemberService;
import dev.a.a01.userMember.MemberVo;
import dev.a.a01.userMember.mappers.MemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

    private final MemberDao dao;

    @Autowired
    public MemberServiceImpl(MemberDao dao) {
        this.dao = dao;
    }

    @Override
    public List<HashMap> test(MemberVo vo) throws Exception {
        return dao.test(vo);
    }

    @Override
    public HashMap<String, String> loginCheckCompare(MemberVo vo) {
        return null;
    }

   /* @Override
    public HashMap loignIdCheck() throws Exception {
        HashMap user = dao.loginIdCheck(); //아이디 체크
        HashMap result = new HashMap();
        return result;
    }*/

//    @Override
//    public HashMap memberSetInsert(MemberVo vo) throws Exception {
//        return dao.MemberSetInsert(vo);
//    }
}
