<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>
   <style>
    .about
    {
      background-color:#dff0b6;
    }
    </style>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>about us</h3>
    <p> <a href="home.php">home</a> / about </p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="flowers/rose_and_flower.jpg" alt="">
        </div>

        <div class="content">
            <h3>why choose us?</h3>
            <p>Whether you're celebrating life's milestones, expressing heartfelt gratitude, or simply adding a touch of beauty to your everyday moments, Whispering Petals is here to inspire, delight, and exceed your floral expectations.</p>
            <a href="shop.php" class="btn">shop now</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3>what we provide?</h3>
            <p>With a passion for craftsmanship and an unwavering commitment to quality, we meticulously curate each arrangement to reflect the unique personalities and occasions of our cherished customers. From enchanting bouquets that whisper sweet sentiments to stunning centerpieces that command attention, our floral designs are crafted with love and attention to detail.</p>
            <a href="contact.php" class="btn">contact us</a>
        </div>

        <div class="image">
            <img src="flowers/floral_bouquet.jpg" alt="">
        </div>

    </div>

    <div class="flex">

        <div class="image">
            <img src="images/flower_shop-bg2.jpg" alt="">
        </div>

        <div class="content">
            <h3>who we are?</h3>
            <p>At Whispering Petals, we believe that every petal tells a story, every arrangement captures an emotion, and every bouquet creates memories that last a lifetime. Nestled in the heart of Kathmandu, our boutique flower shop is a haven for floral enthusiasts, dreamers, and anyone who cherishes the elegance of nature's finest creations.</p>
            <a href="#reviews" class="btn">clients reviews</a>
        </div>

    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">client's reviews</h1>

    <div class="box-container">

        <div class="box">
            <img src="images/pic-1.png" alt="">
            <p>"Absolutely Stunning Arrangements!"
I recently ordered a bouquet for my wife's birthday from Whispering Petals, and I was blown away by the beauty of the arrangement. The flowers were fresh, vibrant, and expertly arranged. 
My wife was ecstatic! Thank you for making her day so special.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Michael Anderson</h3>
        </div>

        <div class="box">
            <img src="images/pic-2.png" alt="">
            <p>"A Hidden Gem!"
I stumbled upon Whispering Petals while searching for a unique bouquet for a friend's bridal shower, and I'm so glad I did! The shop is charming, and the selection of flowers is incredible. The staff went above and beyond to help me find the perfect arrangement, and it was an absolute hit at the shower. I'll definitely be back for all of my floral needs!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Lily Smith</h3>
        </div>

        <div class="box">
            <img src="images/pic-3.png" alt="">
            <p>"Fantastic Service and Gorgeous Flowers!"
I've been a loyal customer of Whispering Petals for years, and they never disappoint. The staff is always friendly and helpful, and the flowers are consistently stunning. I've ordered bouquets for birthdays, anniversaries, and even just to brighten up my home, and every arrangement has been perfect. Highly recommended!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Iris Williams</h3>
        </div>
<!--
        <div class="box">
            <img src="images/pic-4.png" alt="">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia animi consequatur nostrum cumque itaque ducimus, iure expedita voluptates. Minima, minus.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>john deo</h3>
        </div>

        <div class="box">
            <img src="images/pic-5.png" alt="">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia animi consequatur nostrum cumque itaque ducimus, iure expedita voluptates. Minima, minus.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>john deo</h3>
        </div>

        <div class="box">
            <img src="images/pic-6.png" alt="">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia animi consequatur nostrum cumque itaque ducimus, iure expedita voluptates. Minima, minus.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>john deo</h3>
        </div>

    </div>-->

</section>











<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>