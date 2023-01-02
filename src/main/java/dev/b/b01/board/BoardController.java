package dev.b.b01.board;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@RequestMapping("/b")
@Controller
public class BoardController {

    @Resource(name = "bardService")
    BoardService service;

    @RequestMapping("/fileUpload")
    public String _fileCommit(){

        return "/dev/b/b01/fileUp";
    }
}
