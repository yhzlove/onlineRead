package com.javaer.onlineReading.web;

import com.javaer.onlineReading.entity.BookType;
import com.javaer.onlineReading.entity.Censor;
import com.javaer.onlineReading.service.BookTypeService;
import com.javaer.onlineReading.service.CensorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 审查关键字
 */
@Controller
public class CensorController {

    @Autowired
    private CensorService censorService;


    @RequestMapping(value="/back/censorList",method=RequestMethod.GET)
    public ModelAndView loginPOST() {
        ModelAndView view = new ModelAndView();

        List<Censor> censorList = censorService.getList();
        String returnUrl = "back/censor/censorList";
        view.setViewName(returnUrl);
        view.addObject("censorList",censorList);
        return view;
    }

    //@GetMapping("back/bookTypeUpdate")
    @RequestMapping(value="/back/censorUpdate",method=RequestMethod.GET)
    public ModelAndView censorUpdate(String id) {
        ModelAndView view = new ModelAndView();
        if(id != null) {
            Censor censor = censorService.getOne(id);
            view.addObject("censor", censor);
        }
        String returnUrl = "back/censor/censorUpdate";
        view.setViewName(returnUrl);

        return view;
    }

    //@PostMapping("back/bookTypeSave")
    @RequestMapping(value="/back/censorSave",method=RequestMethod.POST)
    public String censorSave(Censor censor) {
        censorService.save(censor);
        return "redirect:/back/censorList";
    }

    //@GetMapping("back/bookTypeDelete")
    @RequestMapping(value="/back/censorDelete",method=RequestMethod.GET)
    public String censorDelete(String id) {
        censorService.delete(id);
        return "redirect:/back/censorList";
    }
}
