<<<<<<< HEAD
<?php
    include 'conn.php';

    $semail = $_POST["semail"];

    

    $conn = $pdo->open();
    $stmt = $conn->prepare("INSERT INTO subcribers (sub_email) VALUES (:sub_email)");
    $stmt->bindParam(':sub_email', $semail);
    $stmt->execute();
    $pdo->close();

    header("Location: http://localhost/ecommerce");
=======
<?php
    include 'conn.php';

    $semail = $_POST["semail"];

    

    $conn = $pdo->open();
    $stmt = $conn->prepare("INSERT INTO subcribers (sub_email) VALUES (:sub_email)");
    $stmt->bindParam(':sub_email', $semail);
    $stmt->execute();
    $pdo->close();

    header("Location: http://localhost/ecommerce");
>>>>>>> 04820f7bc7cb2462ed7c210f58960056fd52e821
?>