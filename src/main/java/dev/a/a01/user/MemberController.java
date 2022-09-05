package dev.a.a01.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Map;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Resource(name = "memberService")
    MemberService service;

    /**
     * 로그인
     * @param map
     * @param vo
     * */
    @RequestMapping("/user")
    public ModelAndView members(Map map, MemberVo vo) throws Exception {
        ModelAndView mv = new ModelAndView();
        System.out.println("=====> @ Controller");
        mv.addObject(service.test(vo));
        mv.setViewName("/dev/a/a01/login");
        return mv;
    }
}
