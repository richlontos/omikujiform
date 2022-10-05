package com.richard.omikujiform.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class Omikuji {

    @RequestMapping("/omikuji")
    public String index(Model model) {

        return "index.jsp";

    }

   @RequestMapping(value = "/submit", method = RequestMethod.POST)
    public String logInfo(HttpSession session,
                          @RequestParam(value = "number") String number,
                          @RequestParam(value = "name") String name,
                          @RequestParam(value = "real_person") String real_person,
                          @RequestParam(value = "endeavor_hobby") String endeavor_hobby,
                          @RequestParam(value = "living_thing") String living_thing,
                          @RequestParam(value = "say_something") String say_something ) {


        session.setAttribute("number", number);
        session.setAttribute("name", name);
        session.setAttribute("real_person", real_person);
        session.setAttribute("endeavor_hobby", endeavor_hobby);
        session.setAttribute("living_thing", living_thing);
        session.setAttribute("say_something", say_something);


        return "redirect:/show";
   }


   @RequestMapping("/show")
    public String show(HttpSession session, Model model) {
        String number = (String) session.getAttribute("number");
        String name = (String) session.getAttribute("name");
        String real_person = (String) session.getAttribute("real_person");
        String endeavor_hobby = (String) session.getAttribute("endeavor_hobby");
        String living_thing = (String) session.getAttribute("living_thing");
        String say_something = (String) session.getAttribute("say_something");


        model.addAttribute("number", number);
        model.addAttribute("name", name);
        model.addAttribute("real_person");
        model.addAttribute("endeavor_hobby");
        model.addAttribute("living_thing");
        model.addAttribute("say_something");

        return "show.jsp";
   }

    @RequestMapping("/back")
    public String back(HttpSession session) {

        session.removeAttribute("number");
        session.removeAttribute("name");
        session.removeAttribute("real_person");
        session.removeAttribute("endeavor_hobby");
        session.removeAttribute("living_thing");
        session.removeAttribute("say_something");

        return "redirect:/omikuji";
    }


}
