package hu.nagypeter.gymwebapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.nagypeter.gymwebapp.model.Shipping;
import hu.nagypeter.gymwebapp.repository.ShippingRepository;

@Service
public class ShippingService implements CustomService<Shipping, Long>{

	@Autowired
	private ShippingRepository repository;
	
	@Override
	public List<Shipping> findAll() {
		return repository.findAll();
	}

	@Override
	public Shipping findById(Long id) {
		Optional<Shipping> shipping = repository.findById(id);
		if(shipping.isPresent()) {
			return shipping.get();
		}else {return null;}
	}

	@Override
	public void deleteById(Long id) {
		repository.deleteById(id);
	}

	@Override
	public void save(Shipping item) {
		repository.save(item);
	}

}
