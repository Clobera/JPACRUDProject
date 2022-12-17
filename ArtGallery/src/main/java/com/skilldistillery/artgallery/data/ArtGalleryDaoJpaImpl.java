package com.skilldistillery.artgallery.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.artgallery.entities.ArtGallery;
import com.skilldistillery.artgallery.entities.ArtPiece;

@Service
@Transactional
public class ArtGalleryDaoJpaImpl implements ArtGalleryDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public ArtPiece findById(int artId) {
		return em.find(ArtPiece.class, artId);
	}

	@Override
	public List<ArtPiece> findAll() {
		String jpql = "SELECT p FROM ArtPiece p";
		
		
		
		return em.createQuery(jpql, ArtPiece.class).getResultList();
		
	}

	@Override
	public ArtPiece update(int galleryId) {
		return null;
		// TODO Auto-generated method stub
		
	}
	
	

}
