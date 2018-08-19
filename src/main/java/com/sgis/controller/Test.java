package com.sgis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class Test {	

	

	@RequestMapping(value = "/test/{url:[a-zA-Z0-9_]+}")
	public ModelAndView addNews(@PathVariable String url) throws Exception {
    	ModelAndView temp =new ModelAndView();
    	temp.setViewName("/backstage/jsp/test/"+url);
        return temp;
    }
}