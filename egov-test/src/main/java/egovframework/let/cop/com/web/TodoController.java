package egovframework.let.cop.com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TodoController {
	
	// 목록
    @RequestMapping("/todoList.do")
    public String todoList() throws Exception {
		return "cop/com/index";
    }
}
