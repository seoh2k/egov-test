package egovframework.let.cop.com.service.impl;

import java.util.List;

import egovframework.let.cop.com.service.TestService;
import egovframework.let.cop.com.service.TestTest;
import egovframework.let.cop.com.service.TestVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("TestService")
public class TestServiceImpl extends EgovAbstractServiceImpl implements TestService {
	
	@Resource(name = "TestDAO")
    private TestDAO testDAO;
	
	public List<TestVO> selectTestList() throws Exception {
		
		return testDAO.selectTestList();
	}
	
	public void insertTest(TestTest testTest) throws Exception {

		testDAO.insertTest(testTest);
	}
	
	public void deleteTest(int testId) throws Exception {
		
		testDAO.deleteTest(testId);
	}

	public void updateTest(TestTest testTest) throws Exception {
		
		testDAO.updateTest(testTest);
	}

	public TestVO selectTestInf(int testId) throws Exception {
		
		return testDAO.selectTestInf(testId);
	}
}
