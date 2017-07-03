package com.srs.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.srs.daomain.TranscriptEntity;
import com.srs.daomain.vo.Transcript;
import com.srs.service.TranscriptService;
@Service("transcriptService")
public class TranscriptServiceImpl implements TranscriptService {
	@Autowired
	private Transcript transcript;
	@Override
	public List<Map<String,String>> queryTranscript(String ssn) {
		// 存在问题：如果grade设为double则老师没给成绩时数据库里面为空但是查出来的时0.0，和老师给了零分重合
		List<Map<String,String>> result=new ArrayList<Map<String,String>>();
		ArrayList<TranscriptEntity> list=transcript.getMap().get(ssn);
		int size=list.size();
		for(int i=0;i<size;i++){
			Map<String,String> map=new HashMap<String,String>();
			map.put("name", list.get(i).getSection().getCourse().getName());
			map.put("grade",String.valueOf(list.get(i).getGrade()));
			map.put("credits", String.valueOf(list.get(i).getSection().getCourse().getCredits()));
			map.put("time", list.get(i).getSection().getDayOfWeek()+" "+list.get(i).getSection().getTimeOfDay());
			result.add(map);
		}
		return result;
	}

}
