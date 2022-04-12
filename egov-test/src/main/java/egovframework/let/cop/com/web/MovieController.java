package egovframework.let.cop.com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	// 목록
    @RequestMapping("/movieList.do")
    public String movieList() throws Exception {
		return "cop/com/MovieList";
    }
}
