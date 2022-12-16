package com.skilldistillery.artgallery.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.artgallery.entities.ArtGallery;

@Service
@Transactional
public class ArtGalleryDaoJpaImpl implements ArtGalleryDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public ArtGallery findById(int artId) {
		return em.find(ArtGallery.class, artId);
	}

	@Override
	public List<ArtGallery> findAll() {
		String jpql = "SELECT a FROM ArtGallery a";
		
		
		
		return em.createQuery(jpql, ArtGallery.class).getResultList();
		
	}

	@Override
	public ArtGallery update(int galleryId) {
		return null;
		// TODO Auto-generated method stub
		
	}
	
	

}
