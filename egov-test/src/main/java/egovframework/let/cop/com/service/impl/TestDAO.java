package egovframework.let.cop.com.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.let.cop.com.service.TestTest;
import egovframework.let.cop.com.service.TestVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("TestDAO")
public class TestDAO extends EgovAbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<TestVO> selectTestList() throws Exception {
		return (List<TestVO>) list("TestDAO.selectTestList");
	}

	public void insertTest(TestTest testTest) throws Exception {
		insert("TestDAO.insertTest", testTest);
	}

	public void deleteTest(int testId) throws Exception {
		delete("TestDAO.deleteTest", testId);
	}

	public void updateTest(TestTest testTest) {
		update("TestDAO.updateTest", testTest);
		
	}

	public TestVO selectTestInf(int testId) {
		return (TestVO)select("TestDAO.selectTestInf", testId);
	}
}
