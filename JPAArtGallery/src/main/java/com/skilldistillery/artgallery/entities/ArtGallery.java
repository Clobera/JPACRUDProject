package com.skilldistillery.artgallery.entities;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "art_gallery")
public class ArtGallery {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "art_style")
	private String artStyle;

	public ArtGallery() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getArtStyle() {
		return artStyle;
	}

	public void setArtStyle(String artStyle) {
		this.artStyle = artStyle;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ArtGallery other = (ArtGallery) obj;
		return id == other.id;
	}

	@Override
	public String toString() {
		return "ArtGallery [id=" + id + ", artStyle=" + artStyle + "]";
	}

}
