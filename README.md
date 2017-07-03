## 项目结构
![image](image/xmjg.png)
## 数据库结构
![image](image/数据库结构.png)
## 选课时序图
![image](image/选课时序图.png)
## 查询成绩时序图
![image](image/查询成绩时序图.png)

## 选课逻辑代码
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
### (1)登陆页面
![image](image/login.png);
### (2)选课首页
![image](image/index.png)
### (3)学生选课
![image](image/xsxk.png)
### (4)选课时课程不在该选课计划内
![image](image/xuanke1.png)
### (5)选课时先修课程不达标
![image](image/xuanke2.png)
### (6)选课成功
![image](image/xuanke3.png)
### (7)添加课程
![image](image/zjkc1.png)
![image](image/zjkc2.png)
### (8)删除课程
![image](image/sckc1.png)
![image](image/sckc2.png)
### (9)查询成绩
![image](image/srs10.png)
### (10)课程管理
![image](image/kcgl.png)
### (11）教师管理
![image](image/jsgl.png)
