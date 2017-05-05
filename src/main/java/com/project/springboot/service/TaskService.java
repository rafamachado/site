package com.project.springboot.service;

import java.util.List;

import com.project.springboot.model.Task;

public interface TaskService {

	Task findById(Long id);
	
	Task findByTitulo(String titulo);
	
	void saveTask(Task task);
	
	void updateTask(Task task);
	
	void deleteTaskById(Long id);
	
	void deleteAllTasks();
	
	List<Task> findAllTasks();
	
	boolean isTaskExit(Task task);
}