package edu.tfswufe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baomidou.mybatisplus.plugins.Page;

import edu.tfswufe.entity.Department;
import edu.tfswufe.entity.Employee;
import edu.tfswufe.entity.Overtime;
import edu.tfswufe.service.DepartmentService;
import edu.tfswufe.service.EmployeeService;
import edu.tfswufe.service.OvertimeService;
import edu.tfswufe.util.MTimeUtil;

@Controller
@RequestMapping("/overtime")
public class OvertimeController {

	@Autowired
	private OvertimeService overtimeService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private DepartmentService departmentService;

	@RequestMapping("/listPage.do")
	public String selectListByPgae(Model model, int pageNo){
		Page<Overtime> page = overtimeService.selectListByPage(pageNo);
		model.addAttribute("page",page);
		return "admin/overtime_list";
	}
	//changed by qc
	@RequestMapping("/{id}/listPage_with_no_power.do")
	public String selectListByPgae2(Model model, @PathVariable Integer id,int pageNo){
		Page<Overtime> page = overtimeService.selectByEmployee(pageNo, id);
		model.addAttribute("page",page);
		return "admin/overtime_list_with_no_power";
	}

	@RequestMapping("/toAdd.do")
	public String toAdd(Model model){
		//查询出所有的部门
		List<Department> dList = departmentService.selectList();
		model.addAttribute("dList", dList);
		//查询出所有的员工
		List<Employee> eList = employeeService.selectList();
		model.addAttribute("eList", eList );
		return "admin/overtime_add";
	}

	@RequestMapping("/add.do")
	public String add(Overtime overtime, String date){
		overtime.setDay(MTimeUtil.stringParse(date));
		overtimeService.insert(overtime);
		return "forward:/overtime/listPage.do?pageNo=1";
	}

	@RequestMapping("/{id}/toUpdate.do")
	public String toUpdate(Model model, @PathVariable Integer id){
		//查询出要修改的记录信息
		Overtime overtime = overtimeService.selectById(id);
		model.addAttribute("overtime", overtime);
		//查询出所有的部门
		List<Department> dList = departmentService.selectList();
		model.addAttribute("dList", dList);
		//查询出所有的员工
		List<Employee> eList = employeeService.selectList();
		model.addAttribute("eList", eList );
		return "admin/overtime_update";
	}

	@RequestMapping("/{id}/update.do")
	public String updateById(@PathVariable Integer id,  String date, Overtime overtime){
		overtime.setId(id);
		overtime.setDay(MTimeUtil.stringParse(date));
		overtimeService.updateById(overtime);
		return "forward:/overtime/listPage.do?pageNo=1";
	}

	@RequestMapping("/{id}/delete.do")
	public String deleteById(@PathVariable Integer id){
		overtimeService.deleteById(id);
		return "forward:/overtime/listPage.do?pageNo=1";
	}

	@RequestMapping("/{employeeNumber}/oneself.do")
	public String select(Model model, @PathVariable Integer employeeNumber, int pageNo){
		Page<Overtime> page = overtimeService.selectByEmployee(pageNo, employeeNumber);
		model.addAttribute("page",page);
		return "admin/oneself_overtime";
	}
	//changed by qc
	@RequestMapping("/{employeeNumber}/oneself_with_no_power.do")
	public String select2(Model model, @PathVariable Integer employeeNumber, int pageNo){
		Page<Overtime> page = overtimeService.selectByEmployee(pageNo, employeeNumber);
		model.addAttribute("page",page);
		return "admin/overtime_list_with_no_power";
	}

}
