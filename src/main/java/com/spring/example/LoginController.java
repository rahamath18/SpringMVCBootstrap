package com.spring.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// http://localhost:8080/SpringMVCWithBootstrapping/hello

@Controller
@RequestMapping("/login")
public class LoginController{
 
   @RequestMapping(method = RequestMethod.GET)
   public String printHello(ModelMap model) {
      model.addAttribute("message", "Login to Books Store!");

      return "login";
   }

}
