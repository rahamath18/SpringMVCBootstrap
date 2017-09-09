package com.spring.example;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/book")
public class BooksController {
	
   @Autowired
   BookDao dao;	
 
   @RequestMapping(value="/getAllBooks", method = RequestMethod.GET)
   public ModelAndView getAllBooks(ModelMap model) {
	   
      model.addAttribute("message", "List of Books");
      
      List<Book> list = dao.getBooks();  
      return new ModelAndView("listAllBooks","list",list);  

   }
   
   @RequestMapping(value="/showAddBookForm")
   public ModelAndView showAddBookForm(ModelMap model) {

      return new ModelAndView("addBookForm","command",new Book());  

   }
   
   @RequestMapping(value="/showAddBookFormHorizontal")
   public ModelAndView showAddBookFormHorizontal(ModelMap model) {

      return new ModelAndView("addBookFormHorizontal","command",new Book());  

   }
   
   @RequestMapping(value="/saveBook",method = RequestMethod.POST)  
   public ModelAndView saveBook(@ModelAttribute("book") Book book) {  
       dao.save(book);  
	   System.out.println(book);
       return new ModelAndView("redirect:/book/getAllBooks");  
   } 
   
   @RequestMapping(value="/editBook/{id}")  
   public ModelAndView editBook(@PathVariable int id){  
       Book e = dao.getBookById(id);  
       return new ModelAndView("editBookForm", "command", e);  
   }  
   
   @RequestMapping(value="/editSaveBook",method = RequestMethod.POST)  
   public ModelAndView editSaveBook(@ModelAttribute("book") Book book) {  
       dao.update(book);  
	   System.out.println(book);
       return new ModelAndView("redirect:/book/getAllBooks");  
   } 
   
   @RequestMapping(value="/deleteBook/{id}",method = RequestMethod.GET)  
   public ModelAndView deleteBook(@PathVariable int id) {
	   
	   System.out.println("deleteBook=" + id);
       dao.delete(id);  
       return new ModelAndView("redirect:/book/getAllBooks");  
   } 
   
   @RequestMapping(value="/viewBook/{id}",method = RequestMethod.GET)  
   public ModelAndView viewBook(@PathVariable int id) {
	   
	   System.out.println("viewBook=" + id);
	   Book e = dao.getBookById(id);  
       return new ModelAndView("viewBookDetails", "book", e);
   } 
   
   @RequestMapping(value="/theme1",method = RequestMethod.GET)  
   public ModelAndView theme1() {
	   
       return new ModelAndView("theme1/theme");
   } 
   
   @RequestMapping(value="/theme2/{id}",method = RequestMethod.GET)  
   public ModelAndView theme2(@PathVariable int id) {
	   ModelAndView mav = new ModelAndView("theme2/theme");
	   if(id == 1) {
		   mav.addObject("showWelcomePage", "true");
		   mav.addObject("showUserRegPage", "false");
	   } else if(id == 2) {
		   mav.addObject("showUserRegPage", "true");
		   mav.addObject("showWelcomePage", "false");
	   }
       return mav;
   } 

}
