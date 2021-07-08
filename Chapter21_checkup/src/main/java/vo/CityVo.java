package vo;

import org.json.simple.JSONAware;

public class CityVo implements JSONAware{
	private String city;
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	@Override
	public String toJSONString() {
		// TODO Auto-generated method stub
		return "{'city' : '" + city + "'}";
	}
}
