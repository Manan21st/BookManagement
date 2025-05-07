package org.projects_nj.bookmanagement.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.projects_nj.bookmanagement.models.Author;
import java.util.List;

public interface AuthorRepository extends JpaRepository<Author, Long> {
    List<Author> findByNameContaining(String keyword);
}