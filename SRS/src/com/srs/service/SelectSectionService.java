package com.srs.service;

import java.util.ArrayList;

import com.srs.daomain.vo.Student;

public interface SelectSectionService {

	String selectSection(String ssn, int sectionNo);

	ArrayList<Student> queryEnrolledStudents(int sectionNo);

}
