<?php include 'header.php';
$pagegetir = $db -> prepare("SELECT * from makale ORDER BY makale_id DESC");
$pagegetir ->execute(array());
$sayfa = $pagegetir->fetchAll(PDO::FETCH_ASSOC);

$f_contents = file("sozler.txt");
$line = $f_contents[array_rand($f_contents)];
$data = $line;

?>
<div class="hero" style="background-image: url('images/index1.jpg'); text-align:right;">
    <div class="hero-inner">
        <div class="inner">
            <h1><span class="border border-top border-bottom">Sena Avcu</span></h1>
            <div class="hero-line-one"></div>
            <div class="hero-line-two"><span class="border border-bottom">Kişisel Anılarım</span></div>
        </div>

        <a class="more-arrow" href="#content"><i class="fa fa-chevron-down"></i><span>Aşağı kaydır</span></a>

    </div>
</div>
<div class="home-sticky" id="content">

    <h2 class="home-sticky-title">makalelerim</h2>


    <div class="sticky-inner">

<?php foreach ($sayfa as $key): ?>
        <aside class="home-sticky-post post has-post-thumbnail sticky ">

            <span class="post-image">
              <a href="http://localhost/itsy/single.php/?id=<?php echo $key["makale_id"]; ?>">

                    <img width="502" height="502" src="<?php echo $key["makale_img"]; ?>"
                     class="attachment-sticky size-sticky" alt=""/>
  				</a>
  		    </span>
            <div class="inner">
                <h3 class="entry-title">
                  <a href="http://localhost/itsy/single.php/?id=<?php echo $key["makale_id"]; ?>">
<?php echo $key["makale_title"]; ?></a>
                </h3>

                <ul class="meta top">
                    <li class="time">
                      <a href="http://localhost/itsy/single.php/?id=<?php echo $key["makale_id"]; ?>">

                            <time class="post-date updated" datetime="2014-12-31"><?php echo $key["makale_date"] ?></time>
                        </a>
                    </li>
                </ul>
            </div>

        </aside>
<?php endforeach; ?>



    </div>


</div>




<div class="wrap full-wrap">
    <div class="main-wrap">
        <section class="main main-archive">
            <div class="loop">




                <article class="post format-quote has-post-thumbnail post_format-post-format-quote">


                    <div class="inner">
                        <div class="post-content">
                            <blockquote class="content-quote">
                                <p><?php echo $data ?></p>
                                <cite>Sena Avcu</cite>
                            </blockquote>
                        </div>

                    </div>
                </article>

                <?php include 'footer.php'; ?>
