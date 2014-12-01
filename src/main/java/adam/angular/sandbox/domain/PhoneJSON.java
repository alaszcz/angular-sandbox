package adam.angular.sandbox.domain;

public class PhoneJSON {
	
	private String id;
	private String name;
	private String snippet;
	private String imageUrl;
	private int age;

	public PhoneJSON() {}

	public PhoneJSON(String id, String name, String snippet, String imageUrl, int age) {
		this.id = id;
		this.name = name;
		this.snippet = snippet;
		this.imageUrl = imageUrl;
		this.age = age;
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
	public String getSnippet() {
		return snippet;
	}
	public void setSnippet(String snippet) {
		this.snippet = snippet;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
