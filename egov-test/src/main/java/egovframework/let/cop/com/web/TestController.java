package egovframework.let.cop.com.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.let.cop.com.service.TestVO;
import egovframework.let.cop.com.service.TestService;
import egovframework.let.cop.com.service.TestTest;

@Controller
public class TestController {
	
	@Resource(name = "TestService")
    private TestService testService;
	
	// 목록
    @RequestMapping("/testList.do")
    public String selectTestList(ModelMap model) throws Exception {

    	List<TestVO> testList = testService.selectTestList();

    	model.addAttribute("testList", testList);

		return "cop/com/TestList";
    }
    
    // 등록
    @RequestMapping("/cop/com/insertTest.do")
    public String insertTest(@ModelAttribute("testTest") TestTest testTest, ModelMap model) throws Exception {

    	testService.insertTest(testTest);

		return "forward:/testList.do";
    }
    
    // 등록 화면으로 이동
    @RequestMapping("/cop/com/addTest.do")
    public String addTest() throws Exception {
    	return "cop/com/TestRegist";
    }
    
    @RequestMapping("/deleteTest.do")
    public String deleteTest(@RequestParam("testId") int testId) throws Exception {
    	System.out.println(testId);
    	testService.deleteTest(testId);

    	return "redirect:/testList.do";
    }
    
    @RequestMapping("/cop/com/updateTest.do")
    public String updateTest(@ModelAttribute("testTest") TestTest testTest) throws Exception {
    	
    	testService.updateTest(testTest);

		return "forward:/testList.do";
    }
    
    @RequestMapping("/cop/com/modifyTest.do")
    public String modifyTest(@ModelAttribute("testId") int testId, ModelMap model) throws Exception {
    	
    	TestVO vo = testService.selectTestInf(testId);
    	
    	model.addAttribute("TestVO", vo);
    	
    	return "cop/com/TestUpdt";
    }
}
