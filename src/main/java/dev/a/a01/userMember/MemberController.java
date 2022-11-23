package dev.a.a01.userMember;

import dev.a.a01.userMember.impl.MemberServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


/**
* 로그인 관련
* */
@Controller
@RequestMapping("/member")
public class MemberController {

    @Resource(name = "memberService")
    MemberServiceImpl service;

    /**
     * 로그인
     * @param map
     * @param vo
     * */
    @RequestMapping("/user")
    public ModelAndView _members(Map map, MemberVo vo) throws Exception {
        ModelAndView mv = new ModelAndView();
        System.out.println("=====> @ Controller");
        mv.addObject(service.test(vo));
        mv.setViewName("/dev/a/a01/login");
        return mv;
    }

    /**
     * 로그인 아이디체크비교 */
    public ModelAndView _loginChackCompare(MemberVo vo, HttpServletRequest req, ModelMap mv)throws IOException {
        HashMap result = (HashMap)service.loginCheckCompare(vo);

        return new ModelAndView("/");
    }

  /*  @RequestMapping("/loginTsetzx")
    public HashMap _login(ModelMap mv, MemberVo vo)throws Exception{
        HashMap map = service.loignIdCheck();
    return map;
    }*/

}
