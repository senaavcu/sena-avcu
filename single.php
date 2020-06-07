
<?php include 'header.php';
if (isset($_GET['id'])) {
  $makale_id =$_GET['id'] ;
}
else {
  $makale_id = 1;
}

$pagegetir = $db -> prepare("SELECT * from makale where makale_id=?");
$pagegetir ->execute(array($makale_id));
$page=$pagegetir->fetch(PDO::FETCH_ASSOC);
 ?>


<div class="wrap full-wrap">
    <div class="main-wrap">
        <section class="main">


            <article class="post has-post-thumbnail">

  		        <span class="post-image">
                    <img width="916" height="611" src="<?php echo $page["makale_img"] ?>" alt="">
  		        </span>


                <div class="inner">

                    <h1 class="entry-title"><?php echo $page["makale_title"]; ?></h1>
                    <ul class="meta top">
                        <li class="time">
                            <time class="post-date updated" datetime="2015-02-02"><?php echo $page["makale_date"] ?></time>
                        </li>


                        <li class="author-m">
                            By <span class="vcard author"><span class="fn">Sena AVCU</a></span></span>
                        </li>

                    </ul>
                    <div class="post-content">
                        <p><?php echo $page["makale_text"] ?></p>
                    </div>
                </div>
            </article>








            <div class="related-posts">

                <h5>Bunlarada göz at</h5>

                <div class="posts">
                  <?php
                  $getirmek = $db -> prepare("SELECT * from makale ORDER BY makale_id DESC LIMIT 3");
                  $getirmek ->execute(array());
                  $tavs = $getirmek ->fetchAll(PDO::FETCH_ASSOC);
                  foreach ($tavs as $tav): ?>

                    <aside class="related post has-post-thumbnail">

  		                <span class="post-image">
                        <a href="http://localhost/itsy/single.php/?id=<?php echo $tav["makale_id"]; ?>">

                                <img width="468" height="468" src=" <?php echo $tav["makale_img"] ?> " alt=""></a>
                        </span>


                        <div class="inner">

                            <h6 class="entry-title">

                                <a href="http://localhost/itsy/single.php/?id=<?php echo $tav["makale_id"]; ?>">

                                    <?php  echo $tav["makale_title"] ?>
                                </a>
                                <ul class="meta top">
                                    <li class="time">
                                        <time class="post-date updated" datetime="2015-01-31"> <?php echo $tav["makale_date"] ?></time>
                                    </li>
                                </ul>

                            </h6>

                        </div>
                    </aside>

                  <?php endforeach; ?>


                </div></div>


<?php include 'footer.php'; ?>
