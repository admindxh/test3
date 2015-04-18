package weixin.guanjia.core.entity.common;

public class Location {
	private Float lat;
	private Float lng;

	public Location() {
	}

	public Location(Float lat, Float lng) {
		this.lat = lat;
		this.lng = lng;
	}

	public void setLat(Float lat) {
		this.lat = lat;
	}

	public Float getLat() {
		return this.lat;
	}

	public Float getLng() {
		return this.lng;
	}

	public void setLng(Float lng) {
		this.lng = lng;
	}
}