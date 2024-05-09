package com.enaa.controller;

import com.enaa.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Controller
public class StudentController {
    private final List<Student> students = new ArrayList<>();
    private int nextId = 1;

    @PostConstruct
    public void init() {
        students.add(new Student(1, "chaimaa", "chaimaa@gmail.com", "060908776", "Beni Mellal","https://i.pinimg.com/564x/e5/ce/13/e5ce137b596d1d1c5d7b3e1ffda0a17f.jpg"));
        students.add(new Student(2, "imane", "imane@gmail.com", "060908775", "Agadir","https://i.pinimg.com/564x/e5/ce/13/e5ce137b596d1d1c5d7b3e1ffda0a17f.jpg"));
    }

    @RequestMapping(value = "/students")
    public String listPage(Model model) {
        model.addAttribute("students", students);
        return "studentsList";
    }

    @GetMapping("/saveStudent")
    public String saveStudent(ModelMap modelMap) {
        modelMap.addAttribute("students", new Student());
        return "AddStudent";
    }

    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute Student student) {
        students.add(student);
        return "redirect:/students";
    }
    @PostMapping("/updateStudent")
    public String updateStudent(@ModelAttribute Student updatedStudent) {
        for (Student student : students) {
            if (student.getId() == updatedStudent.getId()) {
                student.setName(updatedStudent.getName());
                student.setEmail(updatedStudent.getEmail());
                student.setPhone(updatedStudent.getPhone());
                student.setAddress(updatedStudent.getAddress());
                student.setPicture(updatedStudent.getPicture());
                break;
            }
        }
        return "redirect:/";
    }
    @PostMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("id") int id) {
        students.removeIf(student -> student.getId() == id);
        return "redirect:/students";
    }


}
