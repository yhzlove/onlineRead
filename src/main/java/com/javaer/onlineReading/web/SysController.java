package com.javaer.onlineReading.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.javaer.onlineReading.entity.Book;
import com.javaer.onlineReading.entity.BookType;
import com.javaer.onlineReading.entity.User;
import com.javaer.onlineReading.service.BookService;
import com.javaer.onlineReading.service.BookTypeService;
import com.javaer.onlineReading.service.UserService;

import java.util.List;

/**
 * 用户控制类
 */
@Controller
public class SysController {

    @Autowired
    private UserService userService;
    @Autowired
    private BookService bookService;
    @Autowired
    private BookTypeService bookTypeService;

    //@GetMapping("")
    @RequestMapping(value="",method=RequestMethod.GET)
    public ModelAndView index(String bookType) {
        //获取全部类别
        List<BookType> bookTypeList = bookTypeService.getList();
        //获取全部书籍
        List<Book> bookList = bookService.getListBybookType(bookType);

        ModelAndView view = new ModelAndView();
        String returnUrl = "view/index";
        view.setViewName(returnUrl);
        view.addObject("bookList",bookList);
        view.addObject("bookTypeList",bookTypeList);

        return view;
    }

    /**
     * 作者详情页面
     * @param id
     * @return
     */
    //@GetMapping("/author")
    @RequestMapping(value="/author",method=RequestMethod.GET)
    public ModelAndView author(String id) {
        ModelAndView view = new ModelAndView();

        User user = userService.getOne(id);
        view.addObject("author",user);
        List<Book> bookList = bookService.getListByUser(user);
        view.addObject("bookList",bookList);
        String returnUrl = "view/author-detail";
        view.setViewName(returnUrl);

        return view;
    }



   // @GetMapping("back/index")
    @RequestMapping(value="/back/index",method=RequestMethod.GET)
    public String backIndex() {
        return "back/index";
    }

}
