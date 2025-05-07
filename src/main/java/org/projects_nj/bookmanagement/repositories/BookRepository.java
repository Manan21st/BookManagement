package org.projects_nj.bookmanagement.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.projects_nj.bookmanagement.models.Book;
import java.util.List;

public interface BookRepository extends JpaRepository<Book, Long> {
    List<Book> findByTitleContaining(String keyword);
}