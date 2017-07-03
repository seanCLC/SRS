## 项目结构
![image](images/package.png)
## 数据库结构
![image](images/datamoel.png)
## 选课时序图
![image](images/uml1.png)
## 查询成绩时序图
![image](images/uml2.png)

## 选课逻辑
	public String validate(Student student, Section section) {	
		String result=null;
		boolean inPlan=false;//培养计划是否包含这门课程
		boolean selected=false;//是否已选该门课程	
		if(section.getCapacity()<=section.getEnrolledStudents().size()){
			result="人数已满！";
		}else{
			//判断培养计划是否包含这门课程
			if(student.getPlanOfStudy().contains(section.getCourse())){
				inPlan=true;
			}else{
				result="您的课程计划中不包含这门课程！";
			}
			//当培养计划包含这门课时进行是否选过这门课判断
			if(inPlan==true){
				if(student.getAttends() != null){
					//判断学生是否已经选过此课
					if(student.getAttends().contains(section.getCourse())){
						selected=true;
						result="您已经选过这门课程!";
					}
				}
			}
			//判断先修课程是否选过并及格判断
			if(inPlan==true && selected==false){
				if(section.getCourse().getPrevCourse() != null){
					//课程的先修课程列表
					List<Course> preList = section.getCourse().getPrevCourse();
					if(student.getTranscript()!=null){
						//如果先修课程满足
						if(student.getTranscript().containsAll(preList)){
							result = "选课成功";
						}else{
							result="先修课程不达标！";
						}
					}
				}
			}
		}
		return result;
	}

##
## 运行界面
### (1)登陆系统
![image](images/srs1.png);
### (2)选课首页
![image](images/srs2.png)
### (3)查看课程安排
![image](images/srs3.png)
### (4)选课时课程不在该生的计划课程内
![image](images/srs5.png)
### (5)选课时先修课程不达标
![image](images/srs7.png)
### (6)选课成功且查询课程的选修情况
![image](images/srs9.png)
### (7)查询成绩
![image](images/srs10.png)
### (8)课程管理
![image](images/classes.png)
### (9)添加课程
![image](images/addclass1.png)
![image](images/addclass2.png)
### (10)删除课程
![image](images/deleteclass1.png)
![image](images/deleteclass2.png)
### (11）教师管理
![image](images/teacher.png)
