package dev.a.a01.user.impl;

import dev.a.a01.user.MemberService;
import dev.a.a01.user.MemberVo;
import dev.a.a01.user.mappers.MemberDao;
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
}
