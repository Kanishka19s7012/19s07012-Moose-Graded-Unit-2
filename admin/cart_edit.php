<<<<<<< HEAD
<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$userid = $_POST['userid'];
		$cartid = $_POST['cartid'];
		$quantity = $_POST['quantity'];

		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("UPDATE cart SET quantity=:quantity WHERE id=:id");
			$stmt->execute(['quantity'=>$quantity, 'id'=>$cartid]);

			$_SESSION['success'] = 'Quantity updated successfully';
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

	if(isset($_POST['edit'])){
		$userid = $_POST['userid'];
		$cartid = $_POST['cartid'];
		$quantity = $_POST['quantity'];

		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("UPDATE cart SET quantity=:quantity WHERE id=:id");
			$stmt->execute(['quantity'=>$quantity, 'id'=>$cartid]);

			$_SESSION['success'] = 'Quantity updated successfully';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
		
		$pdo->close();

		header('location: cart.php?user='.$userid);
	}

>>>>>>> 04820f7bc7cb2462ed7c210f58960056fd52e821
?>