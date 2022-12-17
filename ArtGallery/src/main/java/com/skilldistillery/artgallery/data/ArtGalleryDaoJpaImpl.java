package com.skilldistillery.artgallery.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

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
	public ArtPiece create(ArtPiece art) {
		 em.persist(art);
		 
		return art;
	}

	@Override
	public ArtPiece update(int artId, ArtPiece artPiece) {
		ArtPiece art = em.find(ArtPiece.class, artId);

		if (art != null) {

			art.setPieceName(artPiece.getPieceName());
			art.setArtistName(artPiece.getArtistName());
			art.setDescription(artPiece.getDescription());
			art.setArtMovement(artPiece.getArtMovement());
			art.setMedium(artPiece.getMedium());
			art.setDimensionHeight(artPiece.getDimensionHeight());
			art.setDimensionWidth(artPiece.getDimensionWidth());
			art.setYearCreated(artPiece.getYearCreated());
			art.setPictureUrl(artPiece.getPictureUrl());

		}

		return art;
	}

	@Override
	public boolean delete(int artId) {
		boolean isDeleted = false;
		ArtPiece deleteArt = em.find(ArtPiece.class, artId);

		if (deleteArt != null) {

			em.remove(deleteArt);

			isDeleted = !em.contains(deleteArt);

		}

		return isDeleted;
	}

}
