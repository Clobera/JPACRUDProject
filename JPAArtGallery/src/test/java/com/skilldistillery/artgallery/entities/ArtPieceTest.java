package com.skilldistillery.artgallery.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ArtPieceTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private ArtPiece artPiece;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAArtGallery");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		artPiece = em.find(ArtPiece.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		artPiece = null;
	}

	@Test
	void test() {
		assertNotNull(artPiece);
		assertEquals("Vincent van Gogh", artPiece.getArtistName());
	}
}
