package com.srs.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.srs.daomain.vo.Student;
import com.srs.service.TranscriptService;
/**
 * 对成绩单进行相关操作
 * @author Administrator
 *
 */
@Controller
public class TranscriptController {
	@Autowired
	private TranscriptService transcriptService;
	
	
	@RequestMapping(value="queryTranscript")
	@ResponseBody
	public Object queryTranscript(HttpSession session){
		Student student=(Student) session.getAttribute("student");
		String ssn=student.getSsn();
		/*String ssn="09143605";*/
		List<Map<String,String>> list=new ArrayList<Map<String,String>>();
		list=transcriptService.queryTranscript(ssn);
		return list;
	}
	
}
