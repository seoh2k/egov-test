package egovframework.let.cop.com.service;

import java.io.Serializable;

public class TestVO extends TestTest implements Serializable {
	
	private static final long serialVersionUID = 600640077510261030L;

	private int testId;
    private String testName = "";
	private int testAge;
	private String testJob = "";
	
	
    public int getTestId() {
		return testId;
	}


	public void setTestId(int testId) {
		this.testId = testId;
	}


	public String getTestName() {
		return testName;
	}


	public void setTestName(String testName) {
		this.testName = testName;
	}


	public int getTestAge() {
		return testAge;
	}


	public void setTestAge(int testAge) {
		this.testAge = testAge;
	}


	public String getTestJob() {
		return testJob;
	}


	public void setTestJob(String testJob) {
		this.testJob = testJob;
	}
}
