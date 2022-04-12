package egovframework.let.cop.com.service;

import java.util.List;

public interface TestService {

	public List<TestVO> selectTestList()
			throws Exception;

	public void insertTest(TestTest testTest)
			throws Exception;

	public void deleteTest(int testId)
			throws Exception;

	public void updateTest(TestTest testTest)
			throws Exception;
	
	public TestVO selectTestInf(int testId)
			throws Exception;
}