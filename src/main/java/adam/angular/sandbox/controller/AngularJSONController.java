package adam.angular.sandbox.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import adam.angular.sandbox.domain.PhoneDetailsJSON;
import adam.angular.sandbox.domain.PhoneJSON;
import adam.angular.sandbox.repository.PhoneRepository;

@Controller
public class AngularJSONController {

	private static final Logger LOG = LoggerFactory.getLogger(AngularJSONController.class);

	@Autowired
	private PhoneRepository phoneRepository;

	@RequestMapping(value = "/phones/phones.json", method = RequestMethod.GET/*, consumes = { MediaType.APPLICATION_JSON_VALUE, MediaType.TEXT_PLAIN_VALUE }*/)
	@ResponseBody
	// Requires "Content-Type: application/json" request header, otherwise returns HTTP 415 error code
	public List<PhoneJSON> phoneList() throws Exception {
		LOG.debug("phoneList");
		List<PhoneJSON> phones = phoneRepository.phoneList();
 		return phones;
 	}

	@RequestMapping(value = "/phones/{id}.json", method = RequestMethod.GET)
	@ResponseBody
	public PhoneDetailsJSON phoneDetails(@PathVariable String id) throws Exception {
		LOG.debug("phoneDetails for: {}", new Object[]{id});
		PhoneDetailsJSON phone = phoneRepository.phoneDetails(id);
 		return phone;
 	}

}
