package com.javaer.onlineReading.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaer.onlineReading.entity.Book;
import com.javaer.onlineReading.entity.Bookshelf;
import com.javaer.onlineReading.entity.User;
import com.javaer.onlineReading.service.BookshelfService;

import javax.servlet.http.HttpSession;

import java.util.Date;
import java.util.List;

/**
 * 我的书架控制类
 */
@Controller
public class BookshelfController {

    @Autowired
    private BookshelfService bookshelfService;

    //@GetMapping("bookshelf/bookshelfList")
    @RequestMapping(value="/bookshelf/bookshelfList",method=RequestMethod.GET)
    public ModelAndView bookshelfList(HttpSession session) {
        User loginUser = (User) session.getAttribute("loginUser");
        String returnUrl =  "view/bookshelf";
        List<Bookshelf> bookshelfList = bookshelfService.getListByUser(loginUser);
        ModelAndView view = new ModelAndView();
        view.setViewName(returnUrl);
        view.addObject("bookshelfList",bookshelfList);
        return view;
    }

    //@GetMapping("bookshelf/bookSave")
    @RequestMapping(value="/bookshelf/bookSave",method=RequestMethod.GET)
    public String bookSave(String bookId,HttpSession session) {
        User loginUser = (User) session.getAttribute("loginUser");
        Book book = new Book();
        book.setId(bookId);
        Bookshelf bookshelf = new Bookshelf();
        bookshelf.setBook(book);
        bookshelf.setUser(loginUser);
        bookshelfService.save(bookshelf);
        return "redirect:/bookshelf/bookshelfList";
    }

    //@GetMapping("bookshelf/bookDelete")
    @RequestMapping(value="/bookshelf/bookDelete",method=RequestMethod.GET)
    public String userDelete(String id) {
        bookshelfService.delete(id);
        return "redirect:/bookshelf/bookshelfList";
    }


}
