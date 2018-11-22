package com.javaer.onlineReading.web;

import com.javaer.onlineReading.entity.ReadLog;
import com.javaer.onlineReading.entity.User;
import com.javaer.onlineReading.service.CensorService;
import com.javaer.onlineReading.service.ReadLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaer.onlineReading.entity.Book;
import com.javaer.onlineReading.entity.Chapter;
import com.javaer.onlineReading.service.BookService;
import com.javaer.onlineReading.service.ChapterService;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 图书章节控制类
 */
@Controller
public class ChapterController {

    @Autowired
    private ChapterService chapterService;
    @Autowired
    private BookService bookService;
    @Autowired
    private CensorService censorService;
    @Autowired
    private ReadLogService readLogService;


    //@GetMapping("back/chapterList")
    @RequestMapping(value="/back/chapterList",method=RequestMethod.GET)
    public ModelAndView chapterList(String bookId,String message) {
        ModelAndView view = new ModelAndView();
        Book book = bookService.getOne(bookId);
        List<Chapter> chapterList = chapterService.getListByBook(bookId);
        String returnUrl = "back/chapter/chapterList";
        view.setViewName(returnUrl);
        view.addObject("chapterList",chapterList);
        view.addObject("book",book);
        view.addObject("message",message);
        return view;
    }

    //@GetMapping("back/chapterAdd")
    @RequestMapping(value="/back/chapterAdd",method=RequestMethod.GET)
    public ModelAndView chapterAdd(String bookId) {
        ModelAndView view = new ModelAndView();

        Book book = bookService.getOne(bookId);
        Chapter chapter = new Chapter();
        chapter.setBook(book);
        view.addObject("chapter", chapter);
        String returnUrl = "back/chapter/chapterUpdate";
        view.setViewName(returnUrl);

        return view;
    }

    //@GetMapping("back/chapterUpdate")
    @RequestMapping(value="/back/chapterUpdate",method=RequestMethod.GET)
    public ModelAndView chapterUpdate(String id, String bookId) {
        ModelAndView view = new ModelAndView();

        Chapter chapter = chapterService.getOne(id);
        view.addObject("chapter", chapter);

        String returnUrl = "back/chapter/chapterUpdate";
        view.setViewName(returnUrl);

        return view;
    }

    //@PostMapping("back/chapterSave")
    @RequestMapping(value="/back/chapterSave",method=RequestMethod.POST)
    public String bookSave(Chapter chapter) {
        String content = chapter.getContent();
        Boolean validateStr = censorService.validateStr(content);
        if(validateStr){
            chapterService.save(chapter);
            return "redirect:/back/chapterList?bookId="+chapter.getBook().getId();
        }
        else{
            return "redirect:/back/chapterList?bookId="+chapter.getBook().getId()+"&message='validateF'";
        }

    }

    //@GetMapping("back/chapterDelete")
    @RequestMapping(value="/back/chapterDelete",method=RequestMethod.GET)
    public String chapterDelete(String id) {
        Chapter chapter = chapterService.getOne(id);
        chapterService.delete(id);
        return "redirect:/back/chapterList?bookId="+chapter.getBook().getId();
    }

    //@GetMapping("chapter")
    @RequestMapping(value="/chapter",method=RequestMethod.GET)
    public ModelAndView chapterInfo(String id, HttpSession session) {
        User loginUser = (User) session.getAttribute("loginUser");
        Chapter chapter = chapterService.getOneAndIncrease(id);
        ModelAndView view = new ModelAndView();
        view.setViewName("view/chapter");
        view.addObject("chapter",chapter);

        if(loginUser != null) {
            //添加阅读历史
            readLogService.save(loginUser, chapter);
        }
        return view;
    }


    @RequestMapping(value="/view/readLog",method=RequestMethod.GET)
    public ModelAndView readLog(HttpSession session) {
        User loginUser = (User) session.getAttribute("loginUser");
        ReadLog readLog = new ReadLog();
        readLog.setUser(loginUser);
        List<ReadLog> list = readLogService.getList(readLog);
        ModelAndView view = new ModelAndView();
        view.setViewName("view/readLog");
        view.addObject("list",list);

        return view;
    }
}
