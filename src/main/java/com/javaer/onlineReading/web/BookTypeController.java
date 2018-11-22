package com.javaer.onlineReading.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.javaer.onlineReading.entity.BookType;
import com.javaer.onlineReading.service.BookTypeService;

import java.util.List;

/**
 * 图书类别
 */
@Controller
public class BookTypeController {

    @Autowired
    private BookTypeService bookTypeService;


    //@GetMapping("back/bookTypeList")
    @RequestMapping(value="/back/bookTypeList",method=RequestMethod.GET)
    public ModelAndView loginPOST() {
        ModelAndView view = new ModelAndView();

        List<BookType> bookTypeList = bookTypeService.getList();
        String returnUrl = "back/bookType/bookTypeList";
        view.setViewName(returnUrl);
        view.addObject("bookTypeList",bookTypeList);
        return view;
    }

    //@GetMapping("back/bookTypeUpdate")
    @RequestMapping(value="/back/bookTypeUpdate",method=RequestMethod.GET)
    public ModelAndView bookTypeUpdate(String id) {
        ModelAndView view = new ModelAndView();
        if(id != null) {
            BookType bookType = bookTypeService.getOne(id);
            view.addObject("bookType", bookType);
        }
        String returnUrl = "back/bookType/bookTypeUpdate";
        view.setViewName(returnUrl);

        return view;
    }

    //@PostMapping("back/bookTypeSave")
    @RequestMapping(value="/back/bookTypeSave",method=RequestMethod.POST)
    public String bookTypeSave(BookType bookType) {
        bookTypeService.save(bookType);
        return "redirect:/back/bookTypeList";
    }

    //@GetMapping("back/bookTypeDelete")
    @RequestMapping(value="/back/bookTypeDelete",method=RequestMethod.GET)
    public String userDelete(String id) {
        bookTypeService.delete(id);
        return "redirect:/back/bookTypeList";
    }
}
