package com.restJpa.Springbootdemo.notesRepo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.restJpa.Springbootdemo.model.notes;

@Repository
public interface notesRepo extends JpaRepository<notes, Long> {

	List<notes> findByTitle(String title);

	List<notes> findAllByUsername(String username);

	//List<notes> findByidupdate(long idby);
	
	
	List<notes> update(String title, String description, Long id);

	//List<notes> findByidupdate(long idby);

	List<notes> findByidupdate(Long idby);

	
	
	
}