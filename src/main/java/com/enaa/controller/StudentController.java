package com.enaa.controller;

import com.enaa.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
        students.add(new Student(1, "chaimaa", "chaimaa@gmail.com", "060908776", "Beni Mellal"));
        students.add(new Student(2, "imane", "imane@gmail.com", "060908775", "Agadir"));
    }

    @RequestMapping(value = "/")
    public String listPage(Model model) {
        model.addAttribute("students", students);
        return "studentsList";
    }

    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute Student student) {
        students.add(student);
        return "redirect:/";
    }
    @PostMapping("/updateStudent")
    public String updateStudent(@ModelAttribute Student updatedStudent) {
        for (Student student : students) {
            if (student.getId() == updatedStudent.getId()) {
                student.setName(updatedStudent.getName());
                student.setEmail(updatedStudent.getEmail());
                student.setPhone(updatedStudent.getPhone());
                student.setAddress(updatedStudent.getAddress());
                break;
            }
        }
        return "redirect:/";
    }
    @PostMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("id") int id) {
        students.removeIf(student -> student.getId() == id);
        return "redirect:/";
    }


}
