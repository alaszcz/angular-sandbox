package adam.angular.sandbox.repository;

import java.util.List;

import adam.angular.sandbox.domain.PhoneDetailsJSON;
import adam.angular.sandbox.domain.PhoneJSON;

public interface PhoneRepository {

	public List<PhoneJSON> phoneList();

	public PhoneDetailsJSON phoneDetails(String id);

}
