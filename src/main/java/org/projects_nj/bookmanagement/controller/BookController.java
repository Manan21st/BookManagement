package org.projects_nj.bookmanagement.controller;

import org.projects_nj.bookmanagement.models.Book;
import org.projects_nj.bookmanagement.models.Author;
import org.projects_nj.bookmanagement.service.BookService;
import org.projects_nj.bookmanagement.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/books")
public class BookController {

    @Autowired
    private BookService bookService;

    @Autowired
    private AuthorService authorService;

    @GetMapping
    public String listBooks(Model model) {
        model.addAttribute("books", bookService.getAllBooks());
        return "books/list";
    }

    @GetMapping("/new")
    public String showCreateForm(Model model) {
        model.addAttribute("book", new Book());
        model.addAttribute("authors", authorService.getAllAuthors());
        return "books/form";
    }

    @PostMapping
    public String createBook(@ModelAttribute Book book, @RequestParam List<Long> authorIds) {
        Set<Author> authors = new HashSet<>(authorService.getAllAuthors().stream()
                .filter(a -> authorIds.contains(a.getId())).toList());
        book.setAuthors(authors);
        bookService.saveBook(book);
        return "redirect:/books";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        Book book = bookService.getBookById(id);
        model.addAttribute("book", book);
        model.addAttribute("authors", authorService.getAllAuthors());
        return "books/form";
    }

    @PostMapping("/update/{id}")
    public String updateBook(@PathVariable Long id, @ModelAttribute Book book, @RequestParam List<Long> authorIds) {
        Set<Author> authors = new HashSet<>(authorService.getAllAuthors().stream()
                .filter(a -> authorIds.contains(a.getId())).toList());
        book.setAuthors(authors);
        bookService.updateBook(id, book);
        return "redirect:/books";
    }
}