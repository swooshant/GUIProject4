
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

		<h4>Grapes:</h4>
		<label><input type="checkbox" name="Grape" value="Pinot Noir" /> Pinot Noir</label>
		<label><input type="checkbox" name="Grape" value="Zinfindel" checked="checked" /> Zinfindel</label>
		<label><input type="checkbox" name="Grape" value="Pinot Grigio" checked="checked" /> Pinot Grigio</label>
		<label><input type="checkbox" name="Grape" value="Malbec" /> Malbec</label>

		<button class="submit">Update filters</button>

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
						<button class="submit" type="button" value="cartPressed" onclick=<?php $this->addToCart ?>> Add to Cart</button>
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

	

	
