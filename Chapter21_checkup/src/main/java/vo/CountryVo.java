package vo;

import org.json.simple.JSONAware;

public class CountryVo implements JSONAware{
	private String country;

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
	@Override
	public String toJSONString() {
		// TODO Auto-generated method stub
		return "{'country' : '" + country + "'}";
	}
}
