package hu.nagypeter.gymwebapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.nagypeter.gymwebapp.model.Cart;
import hu.nagypeter.gymwebapp.repository.CartRepository;

@Service
public class CartService implements CustomService<Cart, Long>{

	@Autowired
	private CartRepository repository;
	
	@Override
	public List<Cart> findAll() {
		return repository.findAll();
	}

	@Override
	public Cart findById(Long id) {
		Optional<Cart> cart = repository.findById(id);
		if(cart.isPresent()) {
			return cart.get();
		}else {return null;}
	}

	@Override
	public void deleteById(Long id) {
		repository.deleteById(id);
	}

	@Override
	public void save(Cart item) {
		repository.save(item);
	}

	public List<Cart> findAllByUserId(Long id) {
		return repository.findAllByUserId(id);
	}

	public void deleteAll() {
		repository.deleteAll();
	}
	
	public Cart findByProductId(Long id) {
		return repository.findByProductId(id);
	}
}
