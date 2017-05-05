package com.project.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.springboot.model.Task;
import com.project.springboot.repository.TaskRepository;

@Service("taskService")
@Transactional
public class TaskServiceImpl implements TaskService{

	@Autowired
	private TaskRepository taskRepository;

	
	@Override
	public Task findById(Long id) {
		// TODO Auto-generated method stub
		return taskRepository.findOne(id);
	}

	@Override
	public Task findByTitulo(String titulo) {
		// TODO Auto-generated method stub
		return taskRepository.findByTitulo(titulo);
	}

	@Override
	public void saveTask(Task task) {
		// TODO Auto-generated method stub
		taskRepository.save(task);
	}

	@Override
	public void updateTask(Task task) {
		// TODO Auto-generated method stub
		saveTask(task);
	}

	@Override
	public void deleteTaskById(Long id) {
		// TODO Auto-generated method stub
		taskRepository.delete(id);
	}
	
	public void deleteAllTasks(){
		taskRepository.deleteAll();
	}

	@Override
	public List<Task> findAllTasks() {
		// TODO Auto-generated method stub
		return taskRepository.findAll();
	}

	@Override
	public boolean isTaskExit(Task task) {
		// TODO Auto-generated method stub
		return findByTitulo(task.getTitulo()) != null;
	}

}