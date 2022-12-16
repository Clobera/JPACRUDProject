package com.skilldistillery.artgallery.data;

import java.util.List;

import com.skilldistillery.artgallery.entities.ArtGallery;

public interface ArtGalleryDAO {
	
	public ArtGallery findById(int artId);
	
	public List<ArtGallery> findAll();
	
	public ArtGallery update(int galleryId);
	
}
