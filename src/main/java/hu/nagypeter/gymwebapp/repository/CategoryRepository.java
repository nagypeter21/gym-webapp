package hu.nagypeter.gymwebapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hu.nagypeter.gymwebapp.model.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

	public Category findByName(String name);
}
