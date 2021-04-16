package hu.nagypeter.gymwebapp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hu.nagypeter.gymwebapp.model.Category;
import hu.nagypeter.gymwebapp.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
	
	public List<Product> findByCategory(Category categ);
}
