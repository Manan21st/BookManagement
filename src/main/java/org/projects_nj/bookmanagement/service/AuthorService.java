package org.projects_nj.bookmanagement.service;

import org.projects_nj.bookmanagement.models.Author;
import org.projects_nj.bookmanagement.repositories.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorService {
    @Autowired
    private AuthorRepository authorRepository;

    public List<Author> getAllAuthors() {
        return authorRepository.findAll();
    }

    public Author getAuthorById(Long id) {
        return authorRepository.findById(id).orElse(null);
    }

    public Author saveAuthor(Author author) {
        return authorRepository.save(author);
    }

    public Author updateAuthor(Long id, Author updatedAuthor) {
        Author author = authorRepository.findById(id).orElse(null);
        if (author != null) {
            author.setName(updatedAuthor.getName());
            return authorRepository.save(author);
        }
        return null;
    }
}