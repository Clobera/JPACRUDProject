package com.skilldistillery.artgallery.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.artgallery.data.ArtGalleryDAO;
import com.skilldistillery.artgallery.entities.ArtGallery;

@Controller
public class ArtGalleryController {
	
	@Autowired
	private ArtGalleryDAO dao;
	
	@RequestMapping(path = { "/", "home.do"} )
	public String goToHome(Model model) {
		List<ArtGallery> list = dao.findAll();
		
		model.addAttribute("list", list);
		
		return "home";
	}
	
	

}
