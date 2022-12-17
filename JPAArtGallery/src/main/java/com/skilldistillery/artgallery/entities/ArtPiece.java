package com.skilldistillery.artgallery.entities;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "art_piece")
public class ArtPiece {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "piece_name")
	private String pieceName;

	@Column(name = "artist_name")
	private String artistName;

	private String description;

	@Column(name = "art_movement")
	private String artMovement;

	private String medium;

	@Column(name = "dimension_height")
	private double dimensionHeight;

	@Column(name = "dimension_width")
	private double dimensionWidth;

	@Column(name = "year_created")
	private int yearCreated;

	@Column(name = "picture_url")
	private String pictureUrl;

	public ArtPiece() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPieceName() {
		return pieceName;
	}

	public void setPieceName(String pieceName) {
		this.pieceName = pieceName;
	}

	public String getArtistName() {
		return artistName;
	}

	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getArtMovement() {
		return artMovement;
	}

	public void setArtMovement(String artMovement) {
		this.artMovement = artMovement;
	}

	public String getMedium() {
		return medium;
	}

	public void setMedium(String medium) {
		this.medium = medium;
	}

	public double getDimensionHeight() {
		return dimensionHeight;
	}

	public void setDimensionHeight(double dimensionHeight) {
		this.dimensionHeight = dimensionHeight;
	}

	public double getDimensionWidth() {
		return dimensionWidth;
	}

	public void setDimensionWidth(double dimensionWidth) {
		this.dimensionWidth = dimensionWidth;
	}

	public int getYearCreated() {
		return yearCreated;
	}

	public void setYearCreated(int yearCreated) {
		this.yearCreated = yearCreated;
	}

	public String getPictureUrl() {
		return pictureUrl;
	}

	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
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
		ArtPiece other = (ArtPiece) obj;
		return id == other.id;
	}

	@Override
	public String toString() {
		return "ArtPiece [id=" + id + ", pieceName=" + pieceName + ", artistName=" + artistName + ", description="
				+ description + ", artMovement=" + artMovement + ", medium=" + medium + ", dimensionHeight="
				+ dimensionHeight + ", dimensionWidth=" + dimensionWidth + ", yearCreated=" + yearCreated
				+ ", pictureUrl=" + pictureUrl + "]";
	}

}
