package dev.z.z01.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {

    @RequestMapping("index")
    public String main(){
        return "/layout/index";
    }
}
