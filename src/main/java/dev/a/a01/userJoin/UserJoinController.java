package dev.a.a01.userJoin;

import dev.a.a01.user.MemberVo;
import dev.a.a01.userJoin.impl.UserJoinServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("/userJoin")
public class UserJoinController {

    @Resource(name = "userJoinService")
    UserJoinServiceImpl service;

    @RequestMapping("/memberGetInsert")
    public String _userGetJoin(){
        return "/dev/a/a01/userJoin";
    }

    /** 아이디 중복체크 */
    @ResponseBody
    @RequestMapping("/checkDuplication")
    public HashMap<String,Object> _checkDuplication(UserJoinVo vo, ModelMap map)throws SQLException {
        HashMap<String, Object> hm = new HashMap<String, Object>();
        int result = service.checkDuplicationUserId(vo);
         map.addAttribute("result",result);
        hm.put("result",result);
        return hm;
    }

//    @RequestMapping("/memberSetInsert")
//    public ModelAndView _userJoinSave(UserJoinVo vo, String id) throws Exception {
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("/dev/a/a01/memberInsert");
//        mav.addObject(service.userJoinService(vo));
//        //없으면 다른 상수
//        //아이디 중복
//        return mav;
//    }
}

