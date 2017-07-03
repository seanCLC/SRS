package com.srs.specification;

import com.srs.daomain.vo.Section;
import com.srs.daomain.vo.Student;

public interface Specification<T> {
	String validate(Student student, Section section);
}
