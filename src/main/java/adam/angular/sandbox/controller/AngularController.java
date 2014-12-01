package adam.angular.sandbox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AngularController {

	@RequestMapping(value = "/angstart")
	public String add(ModelMap modelMap) throws Exception {
 		return "angular";
 	}
 
	@RequestMapping(value = "/phoneList")
	public String phoneList(ModelMap modelMap) throws Exception {
 		return "phone-list";
 	}

	@RequestMapping(value = "/phoneDetails")
	public String phoneDetails(ModelMap modelMap) throws Exception {
 		return "phone-details";
 	}

}
