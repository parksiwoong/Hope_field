package dev.a.a02.sponController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 후원 페이지 관련 */
@Controller
@RequestMapping("/spon")
public class SponController {

    /** 후원 메인페이지 */
    @RequestMapping("/sponsorship")
    public String _sponsorship(){
        return "/dev/a/a02/sponsorship";
    }
    /** 후원방법 선택페이지 */
    @RequestMapping("/sponsorshipmen")
    public String _sponsorshipmen(){
        return "/dev/a/a02/sponsorshipmen";
    }
}
