package com.srs.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.srs.daomain.TranscriptEntity;

public interface TranscriptService {

	List<Map<String, String>> queryTranscript(String ssn);

}
