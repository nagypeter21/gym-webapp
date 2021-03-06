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
		Category categ = categories.findByName("T??pl??l??kkieg??sz??t??");
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
		Category categ = categories.findByName("Sportfelszerel??s");
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
		Category categ = categories.findByName("F??rfi ruha");
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
		Category categ = categories.findByName("N??i ruha");
		model.addAttribute("products", products.findByCategory(categ));
		return "category-noiruha";
	}
		
	@GetMapping("/admin")
	public String getAdmin(Model model) {
		model.addAttribute("categories", categories.findAll());
		model.addAttribute("products", products.findAll());
		model.addAttribute("status", "Az admin panel el??r??s??hez admink??nt kell bejelentkezned");
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
		
		model.addAttribute("status2", "Sikeres regisztr??ci??, mint "+username+"! Most m??r bejelentkezhetsz!");
		return "login";
	}
	
	@PostMapping("/login")
	public String postLogin(@RequestParam String username, @RequestParam String password, Model model) {
		User user = users.findByUsernameAndPassword(username, password);
		if(user != null) {
			userSessionBean.setUser(user);
			return "redirect:/";
		}else {
			model.addAttribute("status", "Helytelen bel??p??si adatok");
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
			model.addAttribute("emptycart", "Term??k n??lk??l nem adhatsz le rendel??st!");
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
		shipping1.setAddress("Der??k u 86. 7/21");
		shipping2.setAddress("Der??k u 55 Sz??ps??gszalon");
		shipping3.setAddress("Der??k u 86. 7/21");
		shipping1.setCity("Debrecen");
		shipping2.setCity("Debrecen");
		shipping3.setCity("Debrecen");
		shipping1.setName("Nagy P??ter");
		shipping2.setName("Rancz M??rta");
		shipping3.setName("Nagy P??ter");
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
		product9.setName("Shaker k??k");
		product10.setName("Arcmaszk fekete");
		product11.setName("??telt??rol?? k??k");
		product12.setName("1/2 Gallon Hydrator");
		product13.setName("Gurtni fekete");
		product14.setName("S??lyemel?? ??v");
		product15.setName("Csukl??szor??t?? fekete");
		product16.setName("Edz??t??ska fekete");
		product17.setName("F??rfi p??l?? fekete");
		product18.setName("Edz?? r??vidnadr??g fekete");
		product19.setName("Trik?? pil??tak??k");
		product20.setName("F??rfi jogger karbon");
		product21.setName("Performance 1/4 Zip fekete");
		product22.setName("Pul??ver feh??r");
		product23.setName("Kapucnis pul??ver fekete");
		product24.setName("Kapucnis pul??ver sz??rke");
		product25.setName("Leggings ??jk??k");
		product26.setName("N??i dzseki ??jk??k");
		product27.setName("Sportmelltart?? fekete");
		product28.setName("Leggings sz??rke");
		product29.setName("Leggings fekete");
		product30.setName("Meleg??t??fels?? sz??rke");
		product31.setName("Kapucnis pul??ver keki");
		product32.setName("N??i kab??t fekete");
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
		product1.setDescription("Pr??mium tejsav??feh??rje, ak??r 21g feh??rj??vel adagonk??nt, a sz??ks??ges feh??rjebevitel biztos??t??s????rt min??s??gi forr??sokb??l.");
		product2.setDescription("A kreatin egyik legink??bb kutatott form??ja a vil??gon ??? ??t??s porunk tudom??nyosan igazoltan fokozza a fizikai teljes??tm??nyt.");
		product3.setDescription("Esszenci??lis BCAA 2:1:1 term??k??nk esszenci??lis el??gaz?? l??nc?? aminosavakat tartalmaz 2:1:1 ar??nyban, melyek a Leucin, Izoleucin ??s a Valin.");
		product4.setDescription("Az L-Glutamin Aminosav egy bevizsg??lt, a Nemzetk??zi Doppingellenes ??gyn??ks??g (WADA) elvei alapj??n ellen??rz??tt term??k.");
		product5.setDescription("THE Pre-Workout egy pr??mium min??s??g?? edz??s el??tti formula, amely megadja a kimagasl?? eredm??nyekhez sz??ks??ges energial??ketet.");
		product6.setDescription("Ultra formul??nk rengeteg esszenci??lis vitamint ??s ??sv??nyi anyagot tartalmaz, mint a kalcium, D-vitamin, szel??n, B5-vitamin.");
		product7.setDescription("Esszenci??lis Aminosavak azok sz??m??ra aj??nlott, akik meg szeretn??k n??velni a napi aminosav bevitel??ket.");
		product8.setDescription("Ezekkel a tablett??kkal egyszer??en megbizonyosodhat arr??l, hogy el??rte a sz??ks??ges kalcium ??s magn??zium szintet.");
		product9.setDescription("Az MP Blender Bottle a legfejlettebb sport kieg??sz??t?? shaker a jelenlegi piacon.");
		product10.setDescription("Ezt a sz??jmaszkot azzal a c??llal hoztuk l??tre, hogy egy er??s v??d??r??teget biztos??tson az ??n mindennapi ??let??hez.");
		product11.setDescription("A T??pl??l??k-kieg??sz??t?? t??rol??dobozok k??nyelmes t??rol??sra ??s sz??ll??t??sra egyar??nt. A PowerTower h??rom k??l??n??ll?? t??rol??t biztos??t.");
		product12.setDescription("Garant??lja a hidrat??ci??t edz??sei alatt ??s az eg??sz nap folyam??n a Myprotein 1,8 literes, kem??ny fal?? flakonj??val (?? gallon ??rtartalom).");
		product13.setDescription("Biztos fog??st ??s seg??ts??get ny??jt nagy s??lyok emel??sekor. A heveder tov??bb?? n??veli a kontaktfel??letet a r??d ??s a k??z k??z??tt.");
		product14.setDescription("A Myprotein B??r s??lyemel?? ??v ??gy lett tervezve, hogy maxim??lis h??t ??s t??rzs t??mogat??st ny??jtson a neh??z emel??sekhez.");
		product15.setDescription("A Csukl??szor??t?? band??zs egy min??s??gi csukl?? band??zs/f??sli, aminek c??lja, hogy k??nyelmesen t??mogassa a csukl??j??t.");
		product16.setDescription("Szedje ??ssze az edz??s felszerel??s??t ??s ir??ny sportolni st??lusosan a t??gas Barrel Bag edz??s t??sk??nkkal.");
		product17.setDescription("Egyszer?? ??s st??lusos - a Rest Day p??l?? 100% pamutb??l k??sz??lt, hogy teljes k??nyelmet biztos??tson.");
		product18.setDescription("Az edz?? nadr??got a mindennapi teljes??tm??ny ??rdek??ben fejlesztett??k ki.");
		product19.setDescription("Training Grid Tank Top Trik??nk az egyszer??s??g ??s a teljes??tm??ny t??k??letes kombin??ci??ja.");
		product20.setDescription("Az Essential Jogger a j?? anyag??rzet ??s a k??nyelem szellem??ben k??sz??lt.");
		product21.setDescription("Ez a fels?? puha tapint??s??, ny??l??kony anyagb??l k??sz??lt, hogy k??nyelmesen, szabadon mozoghasson.");
		product22.setDescription("Rest Day Slogan Hoodie Pul??ver??nk igazi mindennapi alapdarab. Norm??l szab??ssal ??s puha tapint??s?? anyagb??l a teljes k??r?? k??nyelem??rt.");
		product23.setDescription("??lt??zk??dj??n st??lusosan h??tk??znapjain is, MP Form Kapucnis Pul??ver??nk teljes k??r?? k??nyelmet biztos??t a mindennapokon.");
		product24.setDescription("??lt??zk??dj??n st??lusosan h??tk??znapjain is, MP Form Kapucnis Pul??ver??nk teljes k??r?? k??nyelmet biztos??t a mindennapokon.");
		product25.setDescription("Csupa energia, ??s m??g ann??l is t??bb. Az ??j Power Ultra term??kcsal??dunk az egyik eddigi legprofibb diz??jnunk.");
		product26.setDescription("Csupa energia, ??s m??g ann??l is t??bb. Az ??j Power Ultra term??kcsal??dunk az egyik eddigi legprofibb diz??jnunk.");
		product27.setDescription("Csupa energia, ??s m??g ann??l is t??bb. Az ??j Power Ultra term??kcsal??dunk az egyik eddigi legprofibb diz??jnunk.");
		product28.setDescription("Seamless kollekci??nk a st??lus ??s a funkcionalit??s t??k??letes kombin??ci??ja ??? olyan diz??jnnal, melyben remek??l n??zhet ki.");
		product29.setDescription("Essentials Training Leggings??nk tervez??sekor a k??nyelem volt k??z??ppontban.");
		product30.setDescription("Tudjuk, hogy mindenkinek sz??ks??ge van azokra az elengedhetetlen alapdarabokra szekr??ny??ben.");
		product31.setDescription("Tudjuk, hogy mindenkinek sz??ks??ge van azokra az elengedhetetlen alapdarabokra szekr??ny??ben.");
		product32.setDescription("A Power Mesh Dzseki ??gy lett megalkotva, hogy egy szoros, el??ny??s szab??st biztos??tson, h??l??s panelekkel a jobb szell??z??s??rt ??s l??thatatlan zsebekkel.");
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
		category1.setName("T??pl??l??kkieg??sz??t??");
		category2.setName("Sportfelszerel??s");
		category3.setName("F??rfi ruha");
		category4.setName("N??i ruha");
		
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
		
		model.addAttribute("status", "Az adatb??zis elk??sz??lt!");
		
		return "index";
	}
}
