package hu.nagypeter.gymwebapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.nagypeter.gymwebapp.model.Category;
import hu.nagypeter.gymwebapp.model.Product;
import hu.nagypeter.gymwebapp.repository.ProductRepository;

@Service
public class ProductService implements CustomService<Product, Long>{

	@Autowired
	private ProductRepository repository;
	
	@Override
	public List<Product> findAll() {
		return repository.findAll();
	}

	@Override
	public Product findById(Long id) {
		Optional<Product> product = repository.findById(id);
		if(product.isPresent()) {
			return product.get();
		}else {return null;}
	}

	@Override
	public void deleteById(Long id) {
		repository.deleteById(id);
	}

	@Override
	public void save(Product item) {
		repository.save(item);
	}

	public List<Product> findByCategory(Category categ) {
		return repository.findByCategory(categ);
	}
}
