package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.StudentDAO;
import dao.StudentDAOImplementation;
import model.Student1;


@Controller
public class MyController {
	
	@Autowired
	StudentDAO sdao;
	
	public MyController() {
		sdao = new StudentDAOImplementation();
		
	}
	
@RequestMapping("/")
	public String home()
	{
		return "index";
	}
@RequestMapping("/addStudent")
public ModelAndView addStudent()
{
	return new ModelAndView("AddStudent","stu",new Student1());
}

@RequestMapping(value="/saveStudent" , method =RequestMethod.POST)
public String saveStudent(@ModelAttribute("stu") Student1 stud , BindingResult br)
{
	sdao.create(stud);
	return "SaveStudent";
}
	
@RequestMapping("/showAll")
public ModelAndView showAllStudent()
{
	ModelAndView model=new ModelAndView();
	List<Student1> data=sdao.showAllStudents();
	model.addObject("allData",data);
	model.setViewName("AllStudents");
	return model;
	
}

@RequestMapping(value="/deleteStudent", method=RequestMethod.GET)
public String deleteStudentById( @RequestParam(value="id") int id)
{
	sdao.deleteStudentById(id);
	return "redirect:/showAll";
}

@RequestMapping(value="/editStudent", method=RequestMethod.GET)
public ModelAndView editStudentById(@RequestParam(value="id") int id)
{
	ModelAndView model=new ModelAndView();
	Student1 stu=sdao.getStudentById(id);
	model.addObject("data",stu);
	model.setViewName("UpdateStudent");
	return model;
}


@RequestMapping(value="/updateStudent",method=RequestMethod.POST)
public String updateStudent(@ModelAttribute ("data") Student1 stu)
{
sdao.updateStudent(stu);
	return "redirect:/showAll";
}

}