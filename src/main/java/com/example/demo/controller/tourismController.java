package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class tourismController {

	@RequestMapping("/usr/home/main")
	public String test1() {

		return "/usr/home/main";
	}

	@RequestMapping("/")
	public String test2() {

		return "/usr/home/main";
	}
}
