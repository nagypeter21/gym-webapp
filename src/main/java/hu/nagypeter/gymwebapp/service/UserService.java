package hu.nagypeter.gymwebapp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hu.nagypeter.gymwebapp.model.User;
import hu.nagypeter.gymwebapp.repository.UserRepository;

@Service
public class UserService implements CustomService<User, Long>{

	@Autowired
	private UserRepository repository;
	
	@Override
	public List<User> findAll() {
		return repository.findAll();
	}

	@Override
	public User findById(Long id) {
		Optional<User> user = repository.findById(id);
		if(user.isPresent()) {
			return user.get();
		}else {return null;}
	}

	@Override
	public void deleteById(Long id) {
		repository.deleteById(id);
	}

	@Override
	public void save(User item) {
		repository.save(item);
	}

	public User findByUsernameAndPassword(String username, String password) {
		return repository.findByUsernameAndPassword(username, password);
	}

}
