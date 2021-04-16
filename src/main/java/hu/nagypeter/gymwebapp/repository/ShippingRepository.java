package hu.nagypeter.gymwebapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hu.nagypeter.gymwebapp.model.Shipping;

@Repository
public interface ShippingRepository extends JpaRepository<Shipping, Long> {

}
