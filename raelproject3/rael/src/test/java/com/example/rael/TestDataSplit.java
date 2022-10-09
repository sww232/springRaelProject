package com.example.rael;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;


public class TestDataSplit {
	
	@Test
	public void splitdata()
	{
		String a = "temp / data / haha" ;
		String[] temp = a.split(" / ", 3);
		
		System.out.println(temp[0]);
		System.out.println(temp[1]);
		System.out.println(temp[2]);
	}
}
