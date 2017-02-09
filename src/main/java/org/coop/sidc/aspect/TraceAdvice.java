package org.coop.sidc.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.coop.sidc.log.LogWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StopWatch;


@Aspect
public class TraceAdvice {
	
	@Autowired
	private LogWriter logWriter;
	
	@Around("execution(* cs544.mum.edu.repositories.*.*(..))")
	public Object logTime(ProceedingJoinPoint joinPoint) throws Throwable {
		StopWatch sw = new StopWatch();
		sw.start();
		Object obj = joinPoint.proceed();
		sw.stop();
		String message = "Function call: " + joinPoint.getTarget().getClass().getName() + "." 
				+ joinPoint.getSignature().getName() + " tooks " + " " + sw.getLastTaskTimeMillis() + "ms";
		logWriter.writeInfoLog(message);
		return obj;
	}

}