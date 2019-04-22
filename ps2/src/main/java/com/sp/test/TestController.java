package com.sp.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("test.testController")
public class TestController {
	@RequestMapping(value="/test")
	public String main() {
		return "test/main";
	}
}
