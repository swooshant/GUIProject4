
<div id = "browseContainer">
	<div id="sidebar">


			<h3>Search Filters</h3>

			<h4>Grapes:</h4>
			<label><input type="checkbox" name="Grape" value="Pinot Noir" /> Pinot Noir</label>
			<label><input type="checkbox" name="Grape" value="Zinfindel" checked="checked" /> Zinfindel</label>
			<label><input type="checkbox" name="Grape" value="Pinot Grigio" checked="checked" /> Pinot Grigio</label>
			<label><input type="checkbox" name="Grape" value="Malbec" /> Malbec</label>
			<h4>Size:</h4>
			<label><input type="checkbox" name="size" value="1.75L" checked="checked" /> 1.75L</label>
			<label><input type="checkbox" name="size" value="1L" /> 1L</label>
			<label><input type="checkbox" name="size" value="750mL" /> 750mL</label>
			<label><input type="checkbox" name="size" value="350mL" /> 350mL</label>

			<button class="submit">Update filters</button>

	</div>

	<div id="cart">

		<h3>Cart</h3>
		
		<div id = "cartItems"></div>
		<script type="text/javascript">

		function updateTheCart() {
			var $cart = $('#cartItems');
			$.ajax(
				{
					url: "<?= BASE_URL ?>"+ "/products/updateCart/",
					type: "GET",
					
					success: function(result)
					{

						$cart.empty();		
					//	var test = JSON.parse(result);
						//console.log(result);
						$.each(result, function(i, item) {
							var json = JSON.parse(item);
							//console.log(json);
							$cart.append('<li>' + json.WineTitle + ', Price: $' + json.Price + '</li>');
						});
				  	},
				  	error: function() {
				  		alert('error when updating the cart.');
				  	}
				}
			);
		}

		function postToSession(id) {
			var $cart = $('#cartItems');

			var cartData = {
				'id': id
			};

			$.ajax(
			{				
				type: "POST",
				url: "<?= BASE_URL ?>"+ "/products/updatePostCart/",
				data: cartData,
				success: function(result) {
					updateTheCart();
				//	console.log(result);
			  	},
			  	error: function(xhr, status, error) {
  				var err = eval("(" + xhr.responseText + ")");
  				alert(err.Message);
				}
			});
		}
		
		function clearCart() {
			var $cart = $('#cartItems');

			var cartData = {
				'id': 'clear'
			};

			$.ajax(
			{				
				type: "POST",
				url: "<?= BASE_URL ?>"+ "/products/updatePostCart/",
				data: cartData,
				success: function(result) {
					$cart.empty();
					updateTheCart();
			  	},
			  	error: function(xhr, status, error) {
  					var err = eval("(" + xhr.responseText + ")");
  					alert(err.Message);
				}
			});
		}

		$(document).ready(function () {
  			updateTheCart();
		});

		</script>

		 <button class="submit" onclick= "clearCart()">Clear Cart</button>

	</div>

	<div id="browseContent">
			<!-- All descriptions, wine names and images are from TotalWine.com -->
			<div class="rows">	
			 	<?php while($row = mysql_fetch_assoc($result)): ?>
			 	<form action="<?= BASE_URL ?>/products/processEditDel/<?= $row['id'] ?>" method="POST" >
					<!-- All descriptions, wine names and images are from TotalWine.com -->
					<div class="product">
						<a href="<?= BASE_URL ?>/products/view/<?= $row['id'] ?>">
							<img class="product-image" src="<?= BASE_URL ?>/public/img/<?= $row['Img_Url'] ?>" alt="<?= $row['title'] ?>" />
							<h3><?= $row['WineTitle'] ?></h3>
						</a>
						<button class="submit" type="button" id = "updateCart" value="cartPressed" onclick="postToSession(<?=$row['id']?>)"> Add to Cart</button>
						<p class="shortdesc"><?= $row['ShortDesc'] ?></p>
						<p class="price"><?= $row['Price'] ?></p>
						<?php if(isset($_SESSION['adminLogin'])): ?>
					  		<button class="submit" name="edit" value="editPressed" >Edit</button>
					  		<button class="submit" name="delete" onclick="return confirm('Are you sure you want to delete this item?');" value="deletePressed">Delete</button>

						<?php endif; ?>
					</div>
				</form>
				<?php endwhile; ?>
			</div>
	</div>
</div>

	

	
