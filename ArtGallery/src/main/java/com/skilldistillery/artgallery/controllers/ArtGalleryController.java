package com.skilldistillery.artgallery.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.artgallery.data.ArtGalleryDAO;
import com.skilldistillery.artgallery.entities.ArtPiece;

@Controller
public class ArtGalleryController {
	
	@Autowired
	private ArtGalleryDAO dao;
	
	@RequestMapping(path = { "/", "home.do"} )
	public String goToHome(Model model) {
//		List<ArtPiece> list = dao.findAll();
//		
//		model.addAttribute("list", list);
		
		return "home";
	}
	
	@RequestMapping(path = "showAll.do" )
	public String showAllPieces(Model model) {
		List<ArtPiece> list = dao.findAll();
		
		model.addAttribute("list", list);
		
		return "showAll";
	}
	
	@RequestMapping(path = "getArtPiece.do" )
	public String showArtPieces(@RequestParam int id, Model model) {
		ArtPiece art = dao.findById(id);
		
		model.addAttribute("art", art);
		
		return "showPiece";
	}
	
	

}
