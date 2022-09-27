package com.new_jiudian.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class testController {
    @GetMapping("/test")
    public void test(){
        System.out.println("卧槽！！！！！");
    }
}
