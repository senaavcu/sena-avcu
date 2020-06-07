
</div>


</section>


</div><!-- /main-wrap -->


</div><!-- /wrap -->


<div class="footer-widgets widget-count-4">

<div class="wrap">

<div class="mt-about-you-widget">
<div class="widget footer">

<img class="mt-about-avatar" src="images/resim11.jpg" alt="Clare Itsy"/>


<h4>Sena AVCU</h4>

<div class="mt-about-bio">
    <p>selamunaleyküm sela okumaya geldik.</p>
</div>
<?php
$getir = $db -> prepare("SELECT * from makale ORDER BY makale_id DESC LIMIT 4");
$getir ->execute(array());
$sayfalar = $getir->fetchAll(PDO::FETCH_ASSOC);
 ?>

</div>
</div>
<div class="widget footer"><h4>popüler gönderiler</h4>
<ul>
<?php foreach ($sayfalar as $keyler): ?>
<li>
    <a href="http://localhost/itsy/single.php/?id=<?php echo $keyler["makale_id"]; ?>"><?php echo $keyler["makale_title"]; ?></a>
</li>
<?php endforeach; ?>
</ul>
</div>
<div class="widget footer"><h4>Faydalı linkler</h4>
<ul>
<li class="cat-item cat-item-6">
    <a href="#" title="Şİşko Sena">Blog</a>
</li>
<li class="cat-item cat-item-7">
    <a href="#" title="A cute little description would go in here">Şirin</a>
</li>
<li class="cat-item cat-item-8">
    <a href="#">Spor</a>
</li>
<li class="cat-item cat-item-9">
    <a href="#">Eğlence</a>
</li>
</ul>
</div>
<div class="widget footer"><h4>Fotoğraflar</h4>
<div class="textwidget">
<img src="images/resim12.jpg" alt="">
</div>
</div>
</div>

</div>


<footer class="footer">
<div class="footer-wrap">
<div id="footer-text">Karantina günlerinde Sena AVCU tarafından kodlanmıştır.</div>

<a href="#top" id="btt">Yukarı<i class="fa fa-chevron-up"></i></a>
</div>
</footer>

<div id="topsearch">
<div class="table">
<div class="table-cell">
<form role="search" method="get" class="searchform" action="index.html">
<div>
    <input type="text" value="" name="s" class="s" placeholder="Type and hit enter"/>
    <input type="submit" class="searchsubmit" value="Search"/>
</div>
</form>
</div>
</div>
<a href="#topsearch" class="search-trigger"><i class="fa fa-times"></i></a>
</div>


<script>var ie9 = false;</script>
<!--[if lte IE 9 ]>
<script> var ie9 = true; </script>
<![endif]-->
<script src="js/global-plugins.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
