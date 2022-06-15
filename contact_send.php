<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	include 'includes/session.php';

	if(isset($_POST['name'])){
		$fullname = $_POST['name'];
		$email = $_POST['email'];
		$subject = $_POST['subject'];
		$message = $_POST['message'];

	
	

		$_SESSION['name'] = $fullname;
		$_SESSION['email'] = $email;

				try{
					
					//Load phpmailer
		    		require 'vendor/autoload.php';

		    		$mail = new PHPMailer(true);                             
				    try {
				        //Server settings
				        $mail->isSMTP();                                     
				        $mail->Host = 'smtp.gmail.com';                      
				        $mail->SMTPAuth = true;                               
				        $mail->Username = 'official.ejaygoingco3@gmail.com';     
				        $mail->Password = 'wnsnbwdxcbccryyb';                    
				        $mail->SMTPOptions = array(
				            'ssl' => array(
				            'verify_peer' => false,
				            'verify_peer_name' => false,
				            'allow_self_signed' => true
				            )
				        );                         
				        $mail->SMTPSecure = 'ssl';                           
				        $mail->Port = 465;                                   

				        $mail->setFrom($email, $fullname);
				        
				       
				        $mail->addAddress('official.ejaygoingco3@gmail.com');              
				        $mail->addReplyTo($email, $fullname);
				       
				        //Content
				        $mail->isHTML(true);                                  
				        $mail->Subject = ("Infinity Home Furnishings CS: ".$_POST['subject']." ");
				        $mail->Body    = "<h3>Name : $fullname <br>Email : $email <br>Message : $message</h3>";
				        $mail->send();

				        unset($_SESSION['name']);
				     
				        unset($_SESSION['email']);

				        $_SESSION['success'] = ("Thanks ".$_POST['name']." for contacting us. We'll get back to you soon!");
				        header('location: contact.php');

				    } 
				    catch (Exception $e) {
				        $_SESSION['error'] = 'Message could not be sent. Mailer Error: '.$mail->ErrorInfo;
				        header('location: contact.php');
				    }


				}
				catch(PDOException $e){
					$_SESSION['error'] = $e->getMessage();
					header('location: contact.php');
				}

				$pdo->close();

			
		

	}
	else{
		$_SESSION['error'] = 'fill up first';
		header('location: contact.php');
	}
	

?>