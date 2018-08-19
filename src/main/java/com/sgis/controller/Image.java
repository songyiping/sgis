package com.sgis.controller;

import java.awt.image.BufferedImage;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sgis.unit.ImageCode;
@Controller
public class Image{
	
@RequestMapping("/check_code")
public void ValidPic(HttpServletRequest request,HttpServletResponse response) throws Exception{
		try {
			Map<String,BufferedImage> map = ImageCode.getImage(80, 42, 4,20);
			String checkCode = map.keySet().iterator().next();
			request.getSession().setAttribute("imageCode", checkCode);
			
			BufferedImage image = map.values().iterator().next();
			// 禁止图像缓存。  
			response.setHeader("Pragma", "no-cache"); 
			response.setHeader("Cache-Control", "no-cache"); 
			response.setDateHeader("Expires", 0);   
			response.setContentType("image/jpeg");
			
		    ImageIO.write(image, "jpeg", response.getOutputStream()); 
		   } 
        catch (Exception e) 
        {
        	//log.error("check code error:", e);
        	throw e;
        	}
 }

}