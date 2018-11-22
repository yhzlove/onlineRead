package com.javaer.onlineReading.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户控制类
 */
@Controller
public class FileController {

    /**
     * 会员头像上传
     * 只保存文件,未更新会员
     */
    @RequestMapping(value = "file/upload.do",method=RequestMethod.POST,
            consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public String upload(Model model, HttpServletRequest request, HttpServletResponse response){

        Map<String,Object> result=new HashMap<String,Object>();

        // String filePath=pubParamService.getRootPath()+File.separator+"imageCropper"+File.separator;
        String pathDir = "/files/";
        /**得到图片保存目录的真实路径**/
        String filePath = request.getSession().getServletContext().getRealPath(pathDir);
        /**根据真实路径创建目录**/
//		File logoSaveFile = new File(filePath);
//		if(!logoSaveFile.exists())
//			logoSaveFile.mkdirs();

        String fileName=String.valueOf(System.currentTimeMillis())+".png";
        // 参数序列化
        String image = request.getParameter("image");   //拿到字符串格式的图片
        String PicName=fileName;
        System.out.println(PicName);

        // 只允许image
        String header ="data:image";
        String[] imageArr=image.split(",");
        if(imageArr[0].contains(header)){//是img的

            // 去掉头部
            image=imageArr[1];
            //image = image.substring(header.length());
            // 写入磁盘
            String success = "ok";
            BASE64Decoder decoder = new BASE64Decoder();
            try{
                byte[] decodedBytes = decoder.decodeBuffer(image);        //将字符串格式的image转为二进制流（biye[])的decodedBytes
                String imgFilePath =filePath+File.separator+PicName;                        //指定图片要存放的位置
                File targetFile = new File(filePath);
                if(!targetFile.exists()){
                    targetFile.mkdirs();
                }

                FileOutputStream out = new FileOutputStream(imgFilePath);        //新建一个文件输出器，并为它指定输出位置imgFilePath
                out.write(decodedBytes); //利用文件输出器将二进制格式decodedBytes输出
                out.close();                        //关闭文件输出器
//	                success = "上传文件成功！";
//	                result.put("result", success);
//	                result.put("file", filePath);
                System.out.println("上传文件成功！");

                try {
                    PrintWriter out2 = response.getWriter();//输出流
                    out2.print(pathDir+PicName);//输出
                    out2.flush();//关闭输出流
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }catch(Exception e){
                result.put("err", e.getMessage());
            }

        }

        return null;
    }
}
