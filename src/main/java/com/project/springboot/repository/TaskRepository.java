package com.project.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.springboot.model.Task;

@Repository
public interface TaskRepository extends JpaRepository<Task, Long> {
	
	Task findByTitulo(String titulo);

}