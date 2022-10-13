package com.example.rael.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.extern.slf4j.Slf4j;

@ControllerAdvice
@Component
@Slf4j
public class CommonExceptionAdvice{
	private static final Logger logger = LoggerFactory
			.getLogger(CommonExceptionAdvice.class);
	
	@ExceptionHandler(Exception.class)
	public ResponseEntity<ErrorResult> exception(Exception ex)
	{
		logger.info("===============================================================");
		logger.info(ex.toString());
		logger.info("===============================================================");
		
		ErrorResult errorResult = new ErrorResult("USER-EX", ex.getMessage());
		return new ResponseEntity<>(errorResult, HttpStatus.BAD_REQUEST);
	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public ModelAndView handel404(NoHandlerFoundException ex) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("404");
		return mv;
	}
}
