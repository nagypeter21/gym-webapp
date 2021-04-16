package hu.nagypeter.gymwebapp.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hu.nagypeter.gymwebapp.model.Cart;
import hu.nagypeter.gymwebapp.model.Category;
import hu.nagypeter.gymwebapp.model.Product;
import hu.nagypeter.gymwebapp.model.Shipping;
import hu.nagypeter.gymwebapp.model.User;
import hu.nagypeter.gymwebapp.service.CartService;
import hu.nagypeter.gymwebapp.service.CategoryService;
import hu.nagypeter.gymwebapp.service.ProductService;
import hu.nagypeter.gymwebapp.service.ShippingService;
import hu.nagypeter.gymwebapp.service.UserService;
import hu.nagypeter.gymwebapp.session.UserSessionBean;


@Controller
public class MainController {

	@Autowired
	private ProductService products;
	
	@Autowired
	private UserService users;
	
	@Autowired
	private CategoryService categories;
	
	@Autowired
	private ShippingService shippings;
	
	@Autowired
	private CartService carts;
	
	@Autowired
	private UserSessionBean userSessionBean;
	
	@GetMapping("/")
	public String getIndex(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "index";
	}
	
	@GetMapping("/prices")
	public String getPrices(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "prices";
	}
	
	@GetMapping("/exercises")
	public String getExercises(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "exercises";
	}
	
	@GetMapping("/rules")
	public String getRules(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "rules";
	}
	
	@GetMapping("/login")
	public String getLogin(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout(Model model) {
		userSessionBean.setUser(null);
		carts.deleteAll();
		return "redirect:/";
	}
	
	@GetMapping("/chest")
	public String getChest(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "chest";
	}
	
	@GetMapping("/back")
	public String getBack(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "back";
	}
	
	@GetMapping("/leg")
	public String getLeg(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "leg";
	}
	
	@GetMapping("/biceps")
	public String getBiceps(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "biceps";
	}
	
	@GetMapping("/triceps")
	public String getTriceps(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "triceps";
	}
	
	@GetMapping("/abs")
	public String getAbs(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "abs";
	}
	
	@GetMapping("/termsandconditions")
	public String getTermsandconditions() {
		return "termsandconditions";
	}
	
	@GetMapping("/products")
	public String getProducts(Model model) {
		model.addAttribute("categories", categories.findAll());
		model.addAttribute("products", products.findAll());
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "products";
	}
	
	@GetMapping("/category-tapkieg")
	public String getCategoryTapkieg(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		Category categ = categories.findByName("Táplálékkiegészítő");
		model.addAttribute("products", products.findByCategory(categ));
		return "category-tapkieg";
	}
	
	@GetMapping("/category-sportkieg")
	public String getCategorySportkieg(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		Category categ = categories.findByName("Sportfelszerelés");
		model.addAttribute("products", products.findByCategory(categ));
		return "category-sportkieg";
	}
	
	@GetMapping("/category-ferfiruha")
	public String getCategoryFerfiruha(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		Category categ = categories.findByName("Férfi ruha");
		model.addAttribute("products", products.findByCategory(categ));
		return "category-ferfiruha";
	}
	
	@GetMapping("/category-noiruha")
	public String getCategoryNoiruha(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		Category categ = categories.findByName("Női ruha");
		model.addAttribute("products", products.findByCategory(categ));
		return "category-noiruha";
	}
		
	@GetMapping("/admin")
	public String getAdmin(Model model) {
		model.addAttribute("categories", categories.findAll());
		model.addAttribute("products", products.findAll());
		model.addAttribute("status", "Az admin panel eléréséhez adminként kell bejelentkezned");
		if(userSessionBean.getUser() == null) {
			return "login";
		}else {
			if(userSessionBean.getUser().getUsername().equals("admin")) {
				return "admin";
			}else {
				userSessionBean.setUser(null);
				return "login";
			}
		}
	}
	
	@PostMapping("/register")
	public String postRegister(@RequestParam String username, @RequestParam String password, @RequestParam String name, @RequestParam String address, @RequestParam String zipcode, @RequestParam String city, @RequestParam String phone, Model model) {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		Shipping shipping = new Shipping();
		shipping.setName(name);
		shipping.setAddress(address);
		shipping.setZipcode(zipcode);
		shipping.setCity(city);
		shipping.setPhone(phone);
		
		user.setShipping(shipping);
		shippings.save(shipping);
		users.save(user);
		
		model.addAttribute("status2", "Sikeres regisztráció, mint "+username+"! Most már bejelentkezhetsz!");
		return "login";
	}
	
	@PostMapping("/login")
	public String postLogin(@RequestParam String username, @RequestParam String password, Model model) {
		User user = users.findByUsernameAndPassword(username, password);
		if(user != null) {
			userSessionBean.setUser(user);
			return "redirect:/";
		}else {
			model.addAttribute("status", "Helytelen belépési adatok");
			return "login";
		}
	}
	
	@GetMapping("/profile")
	public String getProfile(Model model) {
		model.addAttribute("username2", userSessionBean.getUser().getUsername());
		model.addAttribute("name", userSessionBean.getUser().getShipping().getName());
		model.addAttribute("address", userSessionBean.getUser().getShipping().getAddress());
		model.addAttribute("zipcode", userSessionBean.getUser().getShipping().getZipcode());
		model.addAttribute("city", userSessionBean.getUser().getShipping().getCity());
		model.addAttribute("phone", userSessionBean.getUser().getShipping().getPhone());
		
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		model.addAttribute("user", user);
		return "profile";
	}
	
	@PostMapping("/newproduct")
	public String postNewProduct(@RequestParam String image, @RequestParam String name, @RequestParam String description, @RequestParam int price, @RequestParam Long category, Model model) {
		Product product = new Product();
		product.setImage(image);
		product.setName(name);
		product.setDescription(description);
		product.setPrice(price);
		product.setCategory(categories.findById(category));
		products.save(product);
		return "redirect:/admin";
	}
	
	@PostMapping("/editshipping")
	public String postEditShipping(@RequestParam String name, @RequestParam String address, @RequestParam String zipcode, @RequestParam String city, @RequestParam String phone, Model model) {
		User user = userSessionBean.getUser();
		user.getShipping().setName(name);
		user.getShipping().setAddress(address);
		user.getShipping().setZipcode(zipcode);
		user.getShipping().setCity(city);
		user.getShipping().setPhone(phone);
		users.save(user);
		shippings.save(user.getShipping());
		return "redirect:/profile";
	}
	
	@GetMapping("/edit/{id}")
	public String getEditProduct(@PathVariable Long id, Model model) {
		model.addAttribute("categories", categories.findAll());
		Product product = products.findById(id);
		model.addAttribute("name", product.getName());
		model.addAttribute("price", product.getPrice());
		model.addAttribute("description", product.getDescription());
		model.addAttribute("image", product.getImage());
		model.addAttribute("category", product.getCategory());
		model.addAttribute("id", id);
		return "edit";
	}
	
	@PostMapping("/editproduct")
	public String postEditProduct(@RequestParam Long id, @RequestParam String image, @RequestParam String name, @RequestParam String description, @RequestParam int price, @RequestParam Long category, Model model) {
		Product product = products.findById(id);
		product.setImage(image);
		product.setName(name);
		product.setDescription(description);
		product.setPrice(price);
		product.setCategory(categories.findById(category));
		products.save(product);
		return "redirect:/admin";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteProduct(@PathVariable Long id, Model model) {
		products.deleteById(id);
		return "redirect:/admin";
	}
	
	@GetMapping("/deletefromcart/{id}")
	public String deleteProductFromCart(@PathVariable Long id, Model model) {
		Cart cartDelete = carts.findByProductId(id);
		Long deleteId = cartDelete.getId();
		carts.deleteById(deleteId);
		return "redirect:/cart";
	}
	
	@GetMapping("/cart/{id}")
	public String addProductToCart(@PathVariable Long id, Model model) {
		boolean user = false;
		if(userSessionBean.getUser() == null) {
			return "redirect:/login";
		}
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
					
			Cart cart = new Cart();
			cart.setUserId(userSessionBean.getUser().getId());
			cart.setProductId(id);
			carts.save(cart);
		}
		model.addAttribute("user", user);
		return "redirect:/cart";
	}
	
	@GetMapping("/cart")
	public String getCart(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() == null) {
			return "redirect:/login";
		}
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
			model.addAttribute("name", userSessionBean.getUser().getShipping().getName());
			model.addAttribute("address", userSessionBean.getUser().getShipping().getAddress());
			model.addAttribute("zipcode", userSessionBean.getUser().getShipping().getZipcode());
			model.addAttribute("city", userSessionBean.getUser().getShipping().getCity());
			model.addAttribute("phone", userSessionBean.getUser().getShipping().getPhone());

			List<Product> productsList = new ArrayList<Product>();
			List<Cart> cartsList = carts.findAll();
			for (int i = 0; i < cartsList.size(); i++) {
				if(cartsList.get(i).getUserId() == userSessionBean.getUser().getId()) {
					if(productsList.contains(products.findById(cartsList.get(i).getProductId()))) {
						
					}else {
						productsList.add(products.findById(cartsList.get(i).getProductId()));
					}
				}
			}
			model.addAttribute("productsList", productsList);			
		}
		model.addAttribute("user", user);
		return "cart";
	}
	
	@GetMapping("/ordered")
	public String getOrdered(Model model) {
		boolean user = false;
		if(userSessionBean.getUser() != null) {
			model.addAttribute("username", userSessionBean.getUser().getUsername());
			user = true;
		}
		if(carts.findAll().isEmpty()) {
			model.addAttribute("emptycart", "Termék nélkül nem adhatsz le rendelést!");
			return "cart";
		}else{
		carts.deleteAll();
		model.addAttribute("user", user);
		return "ordered";
		}
	}
	
	@GetMapping("/initdb")
	public String initdb(Model model) {
		User user1 = new User();
		User user2 = new User();
		User admin = new User();
		user1.setUsername("user1");
		user2.setUsername("user2");
		admin.setUsername("admin");
		user1.setPassword("password");
		user2.setPassword("password");
		admin.setPassword("password");
		
		Shipping shipping1 = new Shipping();
		Shipping shipping2 = new Shipping();
		Shipping shipping3 = new Shipping();
		shipping1.setAddress("Derék u 86. 7/21");
		shipping2.setAddress("Derék u 55 Szépségszalon");
		shipping3.setAddress("Derék u 86. 7/21");
		shipping1.setCity("Debrecen");
		shipping2.setCity("Debrecen");
		shipping3.setCity("Debrecen");
		shipping1.setName("Nagy Péter");
		shipping2.setName("Rancz Márta");
		shipping3.setName("Nagy Péter");
		shipping1.setPhone("+36309876543");
		shipping2.setPhone("+36301234567");
		shipping3.setPhone("+36309876543");
		shipping1.setZipcode("4031");
		shipping2.setZipcode("4031");
		shipping3.setZipcode("4031");
		
		user1.setShipping(shipping1);
		user2.setShipping(shipping2);
		admin.setShipping(shipping3);
		
		Product product1 = new Product();
		Product product2 = new Product();
		Product product3 = new Product();
		Product product4 = new Product();
		Product product5 = new Product();
		Product product6 = new Product();
		Product product7 = new Product();
		Product product8 = new Product();
		Product product9 = new Product();
		Product product10 = new Product();
		Product product11 = new Product();
		Product product12 = new Product();
		Product product13 = new Product();
		Product product14 = new Product();
		Product product15 = new Product();
		Product product16 = new Product();
		Product product17 = new Product();
		Product product18 = new Product();
		Product product19 = new Product();
		Product product20 = new Product();
		Product product21 = new Product();
		Product product22 = new Product();
		Product product23 = new Product();
		Product product24 = new Product();
		Product product25 = new Product();
		Product product26 = new Product();
		Product product27 = new Product();
		Product product28 = new Product();
		Product product29 = new Product();
		Product product30 = new Product();
		Product product31 = new Product();
		Product product32 = new Product();
		product1.setName("Impact Whey Protein 5kg");
		product2.setName("Creatine Monohydrate 500g");
		product3.setName("Essential BCAA 2:1:1 500g");
		product4.setName("L-Glutamine 500g");
		product5.setName("The Pre-Workout");
		product6.setName("Alpha Men");
		product7.setName("Essential Amino Acids");
		product8.setName("Calcium & Magnesium");
		product9.setName("Shaker kék");
		product10.setName("Arcmaszk fekete");
		product11.setName("Ételtároló kék");
		product12.setName("1/2 Gallon Hydrator");
		product13.setName("Gurtni fekete");
		product14.setName("Súlyemelő öv");
		product15.setName("Csuklószorító fekete");
		product16.setName("Edzőtáska fekete");
		product17.setName("Férfi póló fekete");
		product18.setName("Edző rövidnadrág fekete");
		product19.setName("Trikó pilótakék");
		product20.setName("Férfi jogger karbon");
		product21.setName("Performance 1/4 Zip fekete");
		product22.setName("Pulóver fehér");
		product23.setName("Kapucnis pulóver fekete");
		product24.setName("Kapucnis pulóver szürke");
		product25.setName("Leggings éjkék");
		product26.setName("Női dzseki éjkék");
		product27.setName("Sportmelltartó fekete");
		product28.setName("Leggings szürke");
		product29.setName("Leggings fekete");
		product30.setName("Melegítőfelső szürke");
		product31.setName("Kapucnis pulóver keki");
		product32.setName("Női kabát fekete");
		product1.setPrice(30000);
		product2.setPrice(4000);
		product3.setPrice(9000);
		product4.setPrice(6000);
		product5.setPrice(11000);
		product6.setPrice(6000);
		product7.setPrice(6000);
		product8.setPrice(3500);
		product9.setPrice(2000);
		product10.setPrice(5000);
		product11.setPrice(1000);
		product12.setPrice(3000);
		product13.setPrice(3000);
		product14.setPrice(8000);
		product15.setPrice(4000);
		product16.setPrice(8000);
		product17.setPrice(8000);
		product18.setPrice(8000);
		product19.setPrice(8000);
		product20.setPrice(8000);
		product21.setPrice(9000);
		product22.setPrice(11000);
		product23.setPrice(14000);
		product24.setPrice(14000);
		product25.setPrice(16000);
		product26.setPrice(17000);
		product27.setPrice(12000);
		product28.setPrice(15000);
		product29.setPrice(10000);
		product30.setPrice(9000);
		product31.setPrice(11000);
		product32.setPrice(14000);
		product1.setDescription("Prémium tejsavófehérje, akár 21g fehérjével adagonként, a szükséges fehérjebevitel biztosításáért minőségi forrásokból.");
		product2.setDescription("A kreatin egyik leginkább kutatott formája a világon — ütős porunk tudományosan igazoltan fokozza a fizikai teljesítményt.");
		product3.setDescription("Esszenciális BCAA 2:1:1 termékünk esszenciális elágazó láncú aminosavakat tartalmaz 2:1:1 arányban, melyek a Leucin, Izoleucin és a Valin.");
		product4.setDescription("Az L-Glutamin Aminosav egy bevizsgált, a Nemzetközi Doppingellenes Ügynökség (WADA) elvei alapján ellenőrzött termék.");
		product5.setDescription("THE Pre-Workout egy prémium minőségű edzés előtti formula, amely megadja a kimagasló eredményekhez szükséges energialöketet.");
		product6.setDescription("Ultra formulánk rengeteg esszenciális vitamint és ásványi anyagot tartalmaz, mint a kalcium, D-vitamin, szelén, B5-vitamin.");
		product7.setDescription("Esszenciális Aminosavak azok számára ajánlott, akik meg szeretnék növelni a napi aminosav bevitelüket.");
		product8.setDescription("Ezekkel a tablettákkal egyszerűen megbizonyosodhat arról, hogy elérte a szükséges kalcium és magnézium szintet.");
		product9.setDescription("Az MP Blender Bottle a legfejlettebb sport kiegészítő shaker a jelenlegi piacon.");
		product10.setDescription("Ezt a szájmaszkot azzal a céllal hoztuk létre, hogy egy erős védőréteget biztosítson az Ön mindennapi életéhez.");
		product11.setDescription("A Táplálék-kiegészítő tárolódobozok kényelmes tárolásra és szállításra egyaránt. A PowerTower három különálló tárolót biztosít.");
		product12.setDescription("Garantálja a hidratációt edzései alatt és az egész nap folyamán a Myprotein 1,8 literes, kemény falú flakonjával (½ gallon űrtartalom).");
		product13.setDescription("Biztos fogást és segítséget nyújt nagy súlyok emelésekor. A heveder továbbá növeli a kontaktfelületet a rúd és a kéz között.");
		product14.setDescription("A Myprotein Bőr súlyemelő öv úgy lett tervezve, hogy maximális hát és törzs támogatást nyújtson a nehéz emelésekhez.");
		product15.setDescription("A Csuklószorító bandázs egy minőségi csukló bandázs/fásli, aminek célja, hogy kényelmesen támogassa a csuklóját.");
		product16.setDescription("Szedje össze az edzős felszerelését és irány sportolni stílusosan a tágas Barrel Bag edzős táskánkkal.");
		product17.setDescription("Egyszerű és stílusos - a Rest Day póló 100% pamutból készült, hogy teljes kényelmet biztosítson.");
		product18.setDescription("Az edző nadrágot a mindennapi teljesítmény érdekében fejlesztettük ki.");
		product19.setDescription("Training Grid Tank Top Trikónk az egyszerűség és a teljesítmény tökéletes kombinációja.");
		product20.setDescription("Az Essential Jogger a jó anyagérzet és a kényelem szellemében készült.");
		product21.setDescription("Ez a felső puha tapintású, nyúlékony anyagból készült, hogy kényelmesen, szabadon mozoghasson.");
		product22.setDescription("Rest Day Slogan Hoodie Pulóverünk igazi mindennapi alapdarab. Normál szabással és puha tapintású anyagból a teljes körű kényelemért.");
		product23.setDescription("Öltözködjön stílusosan hétköznapjain is, MP Form Kapucnis Pulóverünk teljes körű kényelmet biztosít a mindennapokon.");
		product24.setDescription("Öltözködjön stílusosan hétköznapjain is, MP Form Kapucnis Pulóverünk teljes körű kényelmet biztosít a mindennapokon.");
		product25.setDescription("Csupa energia, és még annál is több. Az új Power Ultra termékcsaládunk az egyik eddigi legprofibb dizájnunk.");
		product26.setDescription("Csupa energia, és még annál is több. Az új Power Ultra termékcsaládunk az egyik eddigi legprofibb dizájnunk.");
		product27.setDescription("Csupa energia, és még annál is több. Az új Power Ultra termékcsaládunk az egyik eddigi legprofibb dizájnunk.");
		product28.setDescription("Seamless kollekciónk a stílus és a funkcionalitás tökéletes kombinációja — olyan dizájnnal, melyben remekül nézhet ki.");
		product29.setDescription("Essentials Training Leggingsünk tervezésekor a kényelem volt középpontban.");
		product30.setDescription("Tudjuk, hogy mindenkinek szüksége van azokra az elengedhetetlen alapdarabokra szekrényében.");
		product31.setDescription("Tudjuk, hogy mindenkinek szüksége van azokra az elengedhetetlen alapdarabokra szekrényében.");
		product32.setDescription("A Power Mesh Dzseki úgy lett megalkotva, hogy egy szoros, előnyös szabást biztosítson, hálós panelekkel a jobb szellőzésért és láthatatlan zsebekkel.");
		product1.setImage("tapkieg1.jpg");
		product2.setImage("tapkieg2.jpg");
		product3.setImage("tapkieg3.jpg");
		product4.setImage("tapkieg4.jpg");
		product5.setImage("tapkieg5.jpg");
		product6.setImage("tapkieg6.jpg");
		product7.setImage("tapkieg7.jpg");
		product8.setImage("tapkieg8.jpg");
		product9.setImage("sportkieg1.jpg");
		product10.setImage("sportkieg2.jpg");
		product11.setImage("sportkieg3.jpg");
		product12.setImage("sportkieg4.jpg");
		product13.setImage("sportkieg5.jpg");
		product14.setImage("sportkieg6.jpg");
		product15.setImage("sportkieg7.jpg");
		product16.setImage("sportkieg8.jpg");
		product17.setImage("ferfiruha1.jpg");
		product18.setImage("ferfiruha2.jpg");
		product19.setImage("ferfiruha3.jpg");
		product20.setImage("ferfiruha4.jpg");
		product21.setImage("ferfiruha5.jpg");
		product22.setImage("ferfiruha6.jpg");
		product23.setImage("ferfiruha7.jpg");
		product24.setImage("ferfiruha8.jpg");
		product25.setImage("noiruha1.jpg");
		product26.setImage("noiruha2.jpg");
		product27.setImage("noiruha3.jpg");
		product28.setImage("noiruha4.jpg");
		product29.setImage("noiruha5.jpg");
		product30.setImage("noiruha6.jpg");
		product31.setImage("noiruha7.jpg");
		product32.setImage("noiruha8.jpg");
				
		Category category1 = new Category();
		Category category2 = new Category();
		Category category3 = new Category();
		Category category4 = new Category();
		category1.setName("Táplálékkiegészítő");
		category2.setName("Sportfelszerelés");
		category3.setName("Férfi ruha");
		category4.setName("Női ruha");
		
		category1.setProducts(Arrays.asList(new Product[] {product1,product2,product3,product4,product5,product6,product7,product8}));
		category2.setProducts(Arrays.asList(new Product[] {product9,product10,product11,product12,product13,product14,product15,product16}));
		category3.setProducts(Arrays.asList(new Product[] {product17,product18,product19,product20,product21,product22,product23,product24}));
		category4.setProducts(Arrays.asList(new Product[] {product25,product26,product27,product28,product29,product30,product31,product32}));
		
		product1.setCategory(category1);
		product2.setCategory(category1);
		product3.setCategory(category1);
		product4.setCategory(category1);
		product5.setCategory(category1);
		product6.setCategory(category1);
		product7.setCategory(category1);
		product8.setCategory(category1);
		product9.setCategory(category2);
		product10.setCategory(category2);
		product11.setCategory(category2);
		product12.setCategory(category2);
		product13.setCategory(category2);
		product14.setCategory(category2);
		product15.setCategory(category2);
		product16.setCategory(category2);
		product17.setCategory(category3);
		product18.setCategory(category3);
		product19.setCategory(category3);
		product20.setCategory(category3);
		product21.setCategory(category3);
		product22.setCategory(category3);
		product23.setCategory(category3);
		product24.setCategory(category3);
		product25.setCategory(category4);
		product26.setCategory(category4);
		product27.setCategory(category4);
		product28.setCategory(category4);
		product29.setCategory(category4);
		product30.setCategory(category4);
		product31.setCategory(category4);
		product32.setCategory(category4);
		
		users.save(user1);
		users.save(user2);
		users.save(admin);
		categories.save(category1);
		categories.save(category2);
		categories.save(category3);
		categories.save(category4);
		
		model.addAttribute("status", "Az adatbázis elkészült!");
		
		return "index";
	}
}
