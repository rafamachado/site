/* 
 1- tabela a ser criada no banco MYSQL 
*/

CREATE TABLE `task_list` (
	`id` INT(5) NOT NULL AUTO_INCREMENT,
	`titulo` VARCHAR(30) NOT NULL,	
	`descricao` VARCHAR(30) NULL DEFAULT NULL,
	`task_status` VARCHAR(30) NOT NULL,
	`data` VARCHAR(10) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
);

/* 
 2- Pós criação da tabela acima, não esquecer de configurar o arquivo application.yml 
*/


