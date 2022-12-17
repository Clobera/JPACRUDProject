package com.skilldistillery.artgallery.data;

import java.util.List;

import com.skilldistillery.artgallery.entities.ArtPiece;

public interface ArtGalleryDAO {
	
	public ArtPiece findById(int artId);
	
	public List<ArtPiece> findAll();
	
	public ArtPiece update(int artId, ArtPiece art);
	
}
