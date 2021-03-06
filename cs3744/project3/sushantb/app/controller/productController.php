<?php

include_once '../global.php';

//identifier using get for what we want to do
$action = $_GET['action'];

//creates new class and routes based on action
$pc = new ProductController();
$pc->route($action);

class ProductController {

	// route us to the appropriate class method for this action
	public function route($action) {
		switch($action) {
			case 'viewProduct':
				$productID = $_GET['pid'];
				$this->viewProduct($productID);
			break;

			case 'processEditDel':
				$productID = $_GET['pid'];
				if (isset($_POST['delete'])) {
				   	$this->delete($productID);
				} 
				else if(isset($_POST['edit'])){
				    $this->editProduct($productID);
				}
			break;

			case 'editProductProcess':
				$productID = $_GET['pid'];
				$this->editProductProcess($productID);
			break;
			case 'addItem':
				$this->addItem();
			break;
			case 'addItemProcess':
				$this->addItemProcess();
			break;

			//default case to home
			default:
				header('Location: '.BASE_URL);
			exit();
		}

	}

	//displays an exact product in the product display page.
	//retieves the data from the database
	public function viewProduct($id) {
		$pageName = 'Product';
	
		$productClass = new Product();
		$viewingProduct = $productClass->loadById($id);
		
		$product = array();
		
		$product['id'] = $id;
		$product['WineTitle'] = $viewingProduct->get('WineTitle');
		$product['ShortDesc'] = $viewingProduct->get('ShortDesc');
		$product['LongDesc'] = $viewingProduct->get('LongDesc');
		$product['Volumes'] = $viewingProduct->get('Volumes');
		$product['Price'] = $viewingProduct->get('Price');
		$product['Rating'] = $viewingProduct->get('Rating');
		$product['Date_Created'] = $viewingProduct->get('Date_Created');
		$product['Img_Url'] = $viewingProduct->get('Img_Url');

		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/product.tpl';
		include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	//deletes a specific item from the database
	public function delete($id)
	{
		$conn = mysql_connect(DB_HOST, DB_USER, DB_PASS)
		or die ('Error: Could not connect to MySql database');
		mysql_select_db(DB_DATABASE);

		$q = sprintf("DELETE FROM product WHERE id = %d;",
			$id
			);

		$result = mysql_query($q);
		if (!$result) {
			echo "Delete Failed";
			exit();
		}
		header('Location: '.BASE_URL);
	}


	//displays the additem page, only when admin is logged in
	public function addItem(){
		$pageName = 'addItem';
		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/addProduct.tpl';
		include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	//the process for adding an item to the database
	public function addItemProcess(){
		 $newProduct = new Product();

		$newProduct->set('WineTitle', $_POST['WineTitle']);
		$newProduct->set('ShortDesc', $_POST['ShortDesc']);
		$newProduct->set('LongDesc', $_POST['LongDesc']);
		$newProduct->set('Volumes', $_POST['Volumes']);
		$newProduct->set('Price', $_POST['Price']);
		$newProduct->set('Rating', $_POST['Rating']);
		$newProduct->set('Img_Url', $_POST['Img_Url']);
		$newProduct->set('Creator_Id', 1);

		$newProduct -> save();
		header('Location: '.BASE_URL.'/addItem/');

	}

	//shows the edit page with database data loaded for the specific product
	public function editProduct($id) {
		$pageName = 'Edit Product';
		
		 $productClass = new Product();
		$viewingProduct = $productClass->loadById($id);
		
		$product = array();
		
		$product['WineTitle'] = $viewingProduct->get('WineTitle');
		$product['ShortDesc'] = $viewingProduct->get('ShortDesc');
		$product['LongDesc'] = $viewingProduct->get('LongDesc');
		$product['Volumes'] = $viewingProduct->get('Volumes');
		$product['Price'] = $viewingProduct->get('Price');
		$product['Rating'] = $viewingProduct->get('Rating');
		$product['Date_Created'] = $viewingProduct->get('Date_Created');
		$product['Img_Url'] = $viewingProduct->get('Img_Url');

		include_once SYSTEM_PATH.'/view/header.tpl';
		include_once SYSTEM_PATH.'/view/editProduct.tpl';
		include_once SYSTEM_PATH.'/view/footer.tpl';
	}

	//the process of changing the values in the database
	public function editProductProcess($id) {	
		$productChange = new Product();
		$product = $productChange->loadById($id);
		
		$product->set('id',$id);
		$product->set('WineTitle', $_POST['WineTitle']);
		$product->set('ShortDesc', $_POST['ShortDesc']);
		$product->set('LongDesc', $_POST['LongDesc']);
		$product->set('Volumes', $_POST['Volumes']);
		$product->set('Price', $_POST['Price']);
		$product->set('Rating', $_POST['Rating']);
		$product->set('Img_Url', $_POST['Img_Url']);
		$product->set('Creator_Id', 1);
		
		$product->save();
	    header('Location: '.BASE_URL.'/browse/');
	}


}
