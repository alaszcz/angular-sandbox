package adam.angular.sandbox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/angstart")
public class AngularController {

	@RequestMapping(method = RequestMethod.GET)
	public String add(ModelMap modelMap) throws Exception {
 		return "angular";
 	}
 
//	@RequestMapping(value="/delete")
//	public String delete(ModelMap modelMap) throws Exception {
//		modelMap.put("msg", "delete() method");
// 		return "CustomerPage";
// 	}
 
}
