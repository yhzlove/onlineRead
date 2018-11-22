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
import com.javaer.onlineReading.entity.Chapter;
import com.javaer.onlineReading.entity.User;
import com.javaer.onlineReading.service.BookService;
import com.javaer.onlineReading.service.BookTypeService;
import com.javaer.onlineReading.service.ChapterService;

import javax.servlet.http.HttpSession;

import java.util.Date;
import java.util.List;

/**
 * 图书控制类
 */
@Controller
public class BookController {

    @Autowired
    private BookService bookService;
    @Autowired
    private ChapterService chapterService;
    @Autowired
    private BookTypeService bookTypeService;

    //@GetMapping("back/bookList")
    @RequestMapping(value="/back/bookList",method=RequestMethod.GET)
    public ModelAndView bookList(HttpSession session) {
        User loginUser = (User) session.getAttribute("loginUser");
        String returnUrl = null;
        List<Book> bookList = null;

            //作者登入 查询自己的图书
            returnUrl =  "back/book/bookList";
            bookList = bookService.getListByUser(loginUser);


        ModelAndView view = new ModelAndView();
        view.setViewName(returnUrl);
        view.addObject("bookList",bookList);
        return view;
    }

    //@GetMapping("back/bookCheckList")
    @RequestMapping(value="/back/bookCheckList",method=RequestMethod.GET)
    public ModelAndView bookCheckList(HttpSession session) {
        User loginUser = (User) session.getAttribute("loginUser");
        String returnUrl = null;
        List<Book> bookList = null;
            //管理员登入查询所有信息 按照时间排序
            returnUrl =  "back/book/bookCheckList";
            bookList = bookService.getListByAdmin();

        ModelAndView view = new ModelAndView();
        view.setViewName(returnUrl);
        view.addObject("bookList",bookList);
        return view;
    }

    //@GetMapping("back/bookCheck")
    @RequestMapping(value="/back/bookCheck",method=RequestMethod.GET)
    public String bookCheck(Book book) {
        book.setCheckTime(new Date());
        bookService.save(book);
        return "redirect:/back/bookCheckList";
    }

    //@GetMapping("back/bookUpdate")
    @RequestMapping(value="/back/bookUpdate",method=RequestMethod.GET)
    public ModelAndView bookUpdate(String id) {
        List<BookType> bookTypeList = bookTypeService.getList();
        ModelAndView view = new ModelAndView();
        if(id != null) {
            Book book = bookService.getOne(id);
            view.addObject("book", book);
        }
        String returnUrl = "back/book/bookUpdate";
        view.setViewName(returnUrl);
        view.addObject("bookTypeList", bookTypeList);
        return view;
    }

    //@PostMapping("back/bookSave")
    @RequestMapping(value="/back/bookSave",method=RequestMethod.POST)
    public String bookSave(Book book) {
        bookService.save(book);
        book.setUpdateTime(new Date());
        return "redirect:/back/bookList";
    }

    //@GetMapping("back/bookDelete")
    @RequestMapping(value="/back/bookDelete",method=RequestMethod.GET)
    public String userDelete(String id) {
        bookService.delete(id);
        return "redirect:/back/bookList";
    }

    //@GetMapping("bookInfo")
    @RequestMapping(value="/bookInfo",method=RequestMethod.GET)
    public ModelAndView bookInfo(String id) {
        Book book = bookService.getOneAndIncrease(id);
        List<Chapter> chapterList = chapterService.getListByBook(id);
        ModelAndView view = new ModelAndView();
        view.setViewName("view/book-detail");
        view.addObject("book",book);
        view.addObject("chapterList",chapterList);
        return view;
    }

    /**
     * 查询搜索(按照作者/或者图书)
     * @return
     */
    //@PostMapping("/searchBook")
    @RequestMapping(value="/searchBook",method=RequestMethod.POST)
    public ModelAndView searchBook(String searchType, String searchText) {
        ModelAndView view = new ModelAndView();
        String returnUrl = "view/search-list";
        view.setViewName(returnUrl);

        List<Book> bookList = bookService.getListBySearch(searchType,searchText);
        view.addObject("bookList",bookList);

        return view;
    }
}
