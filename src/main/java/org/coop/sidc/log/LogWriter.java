package org.coop.sidc.log;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

@Component
public class LogWriter {
	private Logger logger = Logger.getLogger("");
	
	public void writeInfoLog(String msg){
		logger.info(msg);
	}
}