package adam.angular.sandbox.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import adam.angular.sandbox.domain.PhoneDetailsJSON;
import adam.angular.sandbox.domain.PhoneJSON;

@Repository
public class PhoneRepositoryImpl implements PhoneRepository {

	private static final Logger LOG = LoggerFactory.getLogger(PhoneRepositoryImpl.class);
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<PhoneJSON> phoneList() {
		String querySql = "select ID, NAME, SNIPPET, IMAGEURL, AGE from PHONE";
		List<PhoneJSON> result = jdbcTemplate.query(querySql, new PhoneMapper(), new Object[] {});
		return result;
	}

	@Override
	public PhoneDetailsJSON phoneDetails(String id) {
		String querySql = "select ID, NAME, DESCRIPTION, IMAGEURLS, ADDITIONAL_FEATURES, AVAILABILITY, GPS, INFRARED from PHONE_DETAILS WHERE ID = ?";
		PhoneDetailsJSON result = jdbcTemplate.queryForObject(querySql, new PhoneDetailsMapper(), new Object[] {id});
		return result;
	}

	private static final class PhoneMapper implements RowMapper<PhoneJSON> {

	    public PhoneJSON mapRow(ResultSet rs, int rowNum) throws SQLException {
	    	String id = rs.getString("id");
	    	String name = rs.getString("name");
	    	String snippet = rs.getString("snippet");
	    	String imageUrl = rs.getString("imageUrl");
	    	Integer age = rs.getInt("age");
	    	LOG.debug("New row fetched: id='{}', name='{}', snippet='{}', imageUrl='{}', age='{}'", new Object[]{id, name, snippet, imageUrl, age});
	    	return new PhoneJSON(id, name, snippet, imageUrl, age);
	    }
	    
	}

	private static final class PhoneDetailsMapper implements RowMapper<PhoneDetailsJSON> {

	    public PhoneDetailsJSON mapRow(ResultSet rs, int rowNum) throws SQLException {
	    	String id = rs.getString("id");
	    	String name = rs.getString("name");
	    	String description = rs.getString("description");
	    	String images = rs.getString("imageUrls");
	    	String[] imageUrls = images.split(",");
	    	String additionalFeatures = rs.getString("additional_features");
	    	String availability = rs.getString("availability");
	    	String[] availabilities = availability.split(",");
	    	Boolean gps = rs.getBoolean("gps");
	    	Boolean infrared = rs.getBoolean("infrared");
	    	LOG.debug("New row fetched: id='{}', name='{}', description='{}', images='{}', additionalFeatures='{}', availability='{}', gps='{}', infrared='{}'", new Object[]{id, name, description, images, additionalFeatures, availability, gps, infrared});
	    	return new PhoneDetailsJSON(id, name, description, imageUrls, additionalFeatures, availabilities, gps, infrared);
	    }
	    
	}

}
