package adam.angular.sandbox.domain;

import java.util.HashMap;
import java.util.Map;

public class PhoneDetailsJSON {
	
	private String id;
	private String name;
	private String description;
	private String[] images;
	private String additionalFeatures;
	private String[] availability;
	private Map<String, Boolean> connectivity = new HashMap<String, Boolean>();

	public PhoneDetailsJSON() {}

	public PhoneDetailsJSON(String id, String name, String description, String[] images, String additionalFeatures, String[] availability, Boolean gps, Boolean infrared) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.images = images;
		this.additionalFeatures = additionalFeatures;
		this.availability = availability;
		this.connectivity.put("gps", gps);
		this.connectivity.put("infrared", infrared);
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String[] getImages() {
		return images;
	}
	public String getImageAt(int index) {
		return images[index];
	}
	public void setImages(String[] images) {
		this.images = images;
	}
	public String getAdditionalFeatures() {
		return additionalFeatures;
	}
	public void setAdditionalFeatures(String additionalFeatures) {
		this.additionalFeatures = additionalFeatures;
	}
	public String[] getAvailability() {
		return availability;
	}
	public String getAvailabilityAt(int index) {
		return availability[index];
	}
	public void setAvailability(String[] availability) {
		this.availability = availability;
	}
	public Map<String, Boolean> getConnectivity() {
		return connectivity;
	}
	public void setConnectivity(Map<String, Boolean> connectivity) {
		this.connectivity = connectivity;
	}

}
