package com.restJpa.Springbootdemo.loginRepo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.restJpa.Springbootdemo.model.login;

@Repository

public interface loginRepo extends JpaRepository<login, Long> {

	 List<login> findByUserName(String lastName);
	//Optional<login> findByName(String string);
	//@Query("select p from login p where p.Username = :forename")
	/*login findByName(
            @Param("forename") String firstname);*/
}
