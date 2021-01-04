<<<<<<< HEAD
<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$userid = $_POST['userid'];
		$cartid = $_POST['cartid'];
		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("DELETE FROM cart WHERE id=:id");
			$stmt->execute(['id'=>$cartid]);

			$_SESSION['success'] = 'Product deleted from cart';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
		
		$pdo->close();

		header('location: cart.php?user='.$userid);
	}

=======
<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$userid = $_POST['userid'];
		$cartid = $_POST['cartid'];
		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("DELETE FROM cart WHERE id=:id");
			$stmt->execute(['id'=>$cartid]);

			$_SESSION['success'] = 'Product deleted from cart';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
		
		$pdo->close();

		header('location: cart.php?user='.$userid);
	}

>>>>>>> 04820f7bc7cb2462ed7c210f58960056fd52e821
?>