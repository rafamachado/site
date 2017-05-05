package com.project.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

import com.project.springboot.configuration.JpaConfiguration;

@Import(JpaConfiguration.class)
@SpringBootApplication(scanBasePackages={"com.project.springboot"})// same as @Configuration @EnableAutoConfiguration @ComponentScan
public class SpringBootTaskList {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootTaskList.class, args);
	}
}
