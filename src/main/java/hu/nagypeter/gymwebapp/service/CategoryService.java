package hu.nagypeter.gymwebapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.nagypeter.gymwebapp.model.Category;
import hu.nagypeter.gymwebapp.repository.CategoryRepository;

@Service
public class CategoryService implements CustomService<Category, Long>{

	@Autowired
	private CategoryRepository repository;
	
	@Override
	public List<Category> findAll() {
		return repository.findAll();
	}

	@Override
	public Category findById(Long id) {
		Optional<Category> category = repository.findById(id);
		if(category.isPresent()) {
			return category.get();
		}else {return null;}
	}

	@Override
	public void deleteById(Long id) {
		repository.deleteById(id);
	}

	@Override
	public void save(Category item) {
		repository.save(item);
	}
	
	public Category findByName(String name) {
		return repository.findByName(name);
	}
}
