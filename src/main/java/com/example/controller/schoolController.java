package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;
import org.springframework.ui.Model;

import com.example.model.Content;
import com.example.model.Crew;
import com.example.model.Equipment;
import com.example.repository.CrewDao;
import com.example.model.Program;
import com.example.repository.ProgramDao;
import com.example.model.School;
import com.example.repository.SchoolDao;
import com.example.repository.EquipmentDao;
import com.example.repository.LinkDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Controller
@RequestMapping("/")
public class schoolController {
	@Autowired
	private CrewDao crewdao;

	@Autowired
	private ProgramDao progdao;

	@Autowired
	private SchoolDao schooldao;

	@Autowired
	private EquipmentDao equipmentDao;

	@Autowired
	private LinkDao linkdao;

	@GetMapping("/loginSchool") 
	public String loginPage(){
		return "school/loginSchool";
	}
	
	@GetMapping("/crew")
	public String crewPage() {
		return "school/crew";
	}

	@PostMapping("/crew")
	public String addCrew(String name, String studentId, String role, String taskStatus) {
		Crew crew = new Crew();
		crew.setName(name);
		crew.setStudentId(studentId);
		crew.setRole(role);
		crew.setTaskStatus(taskStatus);
		crewdao.save(crew);
		return "redirect:/crew";

	}
	
	@GetMapping("/crewManage")
	public String crewManagePage() {
		return "school/crewManage";
	}
	
	@GetMapping("/librarySchool")
	public String libraryPage() {
		return "school/library";
	}
	
	@GetMapping("/library-channelSchool")
	public String channelFilterPage() {
		return "school/library-channel";
	}
	
	@GetMapping("/library-liveSchool")
	public String liveFilterPage() {
		return "school/library-live";
	}
	
	@GetMapping("/library-recentlySchool")
	public String recentlyFilterPage() {
		return "school/library-recently";
	}
	
	@GetMapping("/library-uploadedSchool")
	public String uploadContentPage() {
		return "school/library-uploaded";
	}

	@PostMapping("/library-uploaded")
	public String uploadContent(String name, String desc, String link) {
		Content content = new Content();
		content.setName(name);
		content.setDesc(desc);
		content.setLink(link);
		linkdao.save(content);
		return "redirect:/librarySchool";
	}
	
	@GetMapping("library-videoSchool")
	public String videoFilterPage() {
		return "school/library-video";
	}
	
	@GetMapping("/program")
	public String programPage() {
		return "school/program";
	}

	@PostMapping("/program")
	public String addProgram(String programName, @DateTimeFormat(pattern = "dd-mm-yyyy") Date programDate, String programDesc) {
		Program program = new Program();
		program.setProgName(programName);
		program.setProgDate(programDate);
		program.setProgDesc(programDesc);
		progdao.saveProgram(program);
		return "redirect:/program";
	}
	
	@GetMapping("/programManage")
	public String programManagePage() {
		return "school/programManage";
	}

	@GetMapping("/programView")
	public String programViewPage() {
		return "school/programView";
	}
	
	@GetMapping("/studio")
	public String studioPage(Model model) {
		School school = schooldao.getSchoolById(1); 
        model.addAttribute("school", school);
		return "school/studio";
	}

	/*@PostMapping("/editSchool")
	public String editStudio(@ModelAttribute School school) {
		schooldao.updateSchool(school);
		return "redirect:/studio";
	}*/
	
	@GetMapping("/studioEquipment")
    public String studioEquipmentPage(Model model) {
		List<Equipment> equipmentList = equipmentDao.getAllEquipment();
		model.addAttribute("equipmentList", equipmentList);
        return "school/studioEquipment";
    }

    @PostMapping("/studioEquipment")
    public String updateEquipment(@ModelAttribute("equipment") List<Equipment> equipmentList, String name, int quantity) {
		for (Equipment equipment : equipmentList) {
			equipment.setName(name);
			equipment.setQuantity(quantity);
			equipmentDao.saveEquipment(equipment);
		}
        return "redirect:/studioManage";
    }
	
	@GetMapping("/studioManage")
	public String studioManagePage(Model model) {
		List<Equipment> equipmentList = equipmentDao.getAllEquipment();
    	model.addAttribute("equipmentList", equipmentList);
		return "school/studioManage";
	}
	
	@GetMapping("/successSchool")
	public String successNotif() {
		return "school/success";
	}
}
