package hu.nagypeter.gymwebapp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hu.nagypeter.gymwebapp.model.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
	
	public List<Cart> findAllByUserId(Long id);

	public void deleteAll();

	public Cart findByProductId(Long id);
}
