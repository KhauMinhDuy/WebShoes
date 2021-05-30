package com.example.demo;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class WebShoesApplicationTests {

	@Test
	void contextLoads() {
		String property = System.getProperty("user.dir");
		System.out.println(property);
		String uploadDirectory = System.getProperty("user.dir") + "/src/main/webapp/WEB-INF/commons/images/";
		System.out.println(uploadDirectory);
	}

}
