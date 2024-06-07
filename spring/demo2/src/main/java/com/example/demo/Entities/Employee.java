package com.example.demo.Entities;

import com.example.demo.Entities.Post;
import com.example.demo.Entities.Project;
import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;
@Entity
@Data
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String email;
    private String skill;

    @Enumerated(EnumType.STRING)
    private Post post;

    @ManyToMany
    @JoinTable(
            name = "employee_project",
            joinColumns = @JoinColumn(name = "employee_id"),
            inverseJoinColumns = @JoinColumn(name = "project_id")
    )
    private Set<Project> projects;
}
